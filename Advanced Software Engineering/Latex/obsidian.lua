-- obsidian.lua — converte il Markdown di Obsidian usato in ../Appunti nel LaTeX
-- atteso da main.tex/preamble.tex:
--   * callout "> [!tipo] Titolo"            -> ambienti tcolorbox (boxdefinition, ...)
--   * "![alt|px](assets/x.png)" + "*Fig. N — didascalia*" -> figure [H] con \caption
--   * [[NN - Titolo]]                        -> \hyperref al capitolo NN
--   * blocchi di codice                      -> Verbatim (fvextra, righe spezzate)
--   * "---" tra le sezioni                   -> rimossi

local CALLOUTS = {
  definition = 'boxdefinition', theorem = 'boxtheorem', example = 'boxexample',
  note = 'boxnote', info = 'boxnote', quote = 'boxnote', cite = 'boxnote',
  tip = 'boxtip', hint = 'boxtip', important = 'boxtip', success = 'boxtip',
  warning = 'boxwarning', caution = 'boxwarning', attention = 'boxwarning',
  danger = 'boxwarning', failure = 'boxwarning', bug = 'boxwarning',
  abstract = 'boxabstract', summary = 'boxabstract', tldr = 'boxabstract',
  question = 'boxquestion', faq = 'boxquestion', help = 'boxquestion',
}

-- larghezza (px) a cui si riferisce "|px" nell'alt delle immagini:
-- circa la larghezza della colonna di lettura di Obsidian
local TEXTWIDTH_PX = 700

local input = PANDOC_STATE.input_files[1] or ''
local CHAP = input:match('([0-9][0-9])[^/]*$') or '00'

local function latex(inlines)
  local out = pandoc.write(pandoc.Pandoc({ pandoc.Plain(inlines) }), 'latex')
  return (out:gsub('%s+$', ''))
end

local function trim(inlines)
  while #inlines > 0 and (inlines[1].t == 'Space' or inlines[1].t == 'SoftBreak') do
    table.remove(inlines, 1)
  end
  while #inlines > 0 and (inlines[#inlines].t == 'Space' or inlines[#inlines].t == 'SoftBreak') do
    table.remove(inlines)
  end
  return inlines
end

-- [[NN - Titolo]] diventa un link al capitolo solo se è un file di ../Appunti;
-- i wikilink verso altri corsi del vault restano testo semplice
local function is_chapter(target)
  local f = io.open('../Appunti/' .. target .. '.md', 'r')
  if f then f:close(); return true end
  return false
end

function Link(l)
  if l.title == 'wikilink' then
    local num = l.target:match('^([0-9][0-9])')
    if num and is_chapter(l.target) then
      return pandoc.RawInline('latex', '\\hyperref[ch-' .. num .. ']{' .. latex(l.content) .. '}')
    end
    return pandoc.Emph(l.content)
  end
end

function Header(h)
  if h.level == 1 then h.identifier = 'ch-' .. CHAP end
  return h
end

function HorizontalRule()
  return {}
end

function CodeBlock(cb)
  return pandoc.RawBlock('latex', '\\begin{Verbatim}\n' .. cb.text .. '\n\\end{Verbatim}')
end

-- immagine seguita (nello stesso paragrafo) dalla didascalia in corsivo
function Para(p)
  local c = p.content
  if #c == 0 or c[1].t ~= 'Image' then return nil end
  local img = c[1]
  local caption = {}
  for k = 2, #c do
    if c[k].t == 'Emph' then caption = c[k].content; break end
  end
  -- toglie il prefisso "Fig. 1.2 —": la numerazione la fa LaTeX.
  -- Le didascalie senza "Fig." restano senza numero, come nell'originale.
  local numbered = #caption > 0 and caption[1].t == 'Str' and caption[1].text:match('^Fig') ~= nil
  if numbered then
    local k = 1
    while k <= #caption and not (caption[k].t == 'Str' and caption[k].text == '—') do k = k + 1 end
    if k <= #caption then
      local rest = {}
      for j = k + 1, #caption do rest[#rest + 1] = caption[j] end
      caption = trim(rest)
    end
  end
  local alt = pandoc.utils.stringify(img.caption)
  local px = alt:match('|%s*(%d+)%s*$')
  local frac = px and math.min(tonumber(px) / TEXTWIDTH_PX, 1.0) or 0.8
  local src = img.src:gsub('^assets/', 'images/')
  return pandoc.RawBlock('latex', string.format(
    '\\begin{figure}[H]\n\\centering\n' ..
    '\\includegraphics[width=%.2f\\linewidth,height=0.45\\textheight,keepaspectratio]{%s}\n' ..
    '\\caption%s{%s}\n\\end{figure}', frac, src, numbered and '' or '*', latex(caption)))
end

function BlockQuote(bq)
  local first = bq.content[1]
  if not first or (first.t ~= 'Para' and first.t ~= 'Plain') then return nil end
  local marker = first.content[1]
  if not marker or marker.t ~= 'Str' then return nil end
  local kind = marker.text:match('^%[!([%w-]+)%][+-]?$')
  if not kind then return nil end
  local env = CALLOUTS[kind:lower()] or 'boxnote'

  -- titolo = resto della prima riga; ciò che segue va nel corpo
  local title, rest, i = {}, {}, 2
  local inl = first.content
  while i <= #inl and inl[i].t ~= 'SoftBreak' and inl[i].t ~= 'LineBreak' do
    title[#title + 1] = inl[i]; i = i + 1
  end
  for j = i + 1, #inl do rest[#rest + 1] = inl[j] end

  local blocks = { pandoc.RawBlock('latex', '\\begin{' .. env .. '}{' .. latex(trim(title)) .. '}') }
  if #rest > 0 then blocks[#blocks + 1] = pandoc.Para(rest) end
  for j = 2, #bq.content do blocks[#blocks + 1] = bq.content[j] end
  blocks[#blocks + 1] = pandoc.RawBlock('latex', '\\end{' .. env .. '}')
  return blocks
end

-- riga "capitolo originale / fonte" sotto il titolo del capitolo
function Pandoc(doc)
  local cap = doc.meta.capitolo and pandoc.utils.stringify(doc.meta.capitolo) or ''
  local fonte = doc.meta.fonte and pandoc.utils.stringify(doc.meta.fonte) or ''
  local prof = doc.meta.professore and pandoc.utils.stringify(doc.meta.professore) or ''
  local esc = function(s) return latex({ pandoc.Str(s) }) end
  local meta = pandoc.RawBlock('latex', string.format('\\lecturemeta{Capitolo originale: %s \\quad\\textbullet\\quad %s}{%s}',
    esc(cap), esc(prof), esc(fonte)))
  for k, b in ipairs(doc.blocks) do
    if b.t == 'Header' and b.level == 1 then
      table.insert(doc.blocks, k + 1, meta)
      break
    end
  end
  return doc
end
