WEBVTT

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/9-0
00:00:17.983 --> 00:00:18.143
<v Giorgio Ghelli>Mm.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/13-0
00:00:19.263 --> 00:00:24.169
<v Giorgio Ghelli>I thought we were here, but probably not.
That's too far. Oh yeah,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/13-1
00:00:24.169 --> 00:00:27.903
<v Giorgio Ghelli>we are talking about the tree
organization, sorry.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/19-0
00:00:33.903 --> 00:00:38.644
<v Giorgio Ghelli>So we are discussing how do you organise
the data on disk,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/19-1
00:00:38.644 --> 00:00:44.429
<v Giorgio Ghelli>how do you represent the table on disk?
We have seen the heap approach,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/19-2
00:00:44.429 --> 00:00:49.571
<v Giorgio Ghelli>the sequential approach,
then we have seen the hash approaches,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/19-3
00:00:49.571 --> 00:00:52.383
<v Giorgio Ghelli>and we have seen both static and...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/21-0
00:00:52.783 --> 00:00:58.399
<v Giorgio Ghelli>dynamic hash.
We have seen that hash is very good for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/21-1
00:00:58.399 --> 00:01:00.063
<v Giorgio Ghelli>equality search.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/26-0
00:01:01.103 --> 00:01:07.508
<v Giorgio Ghelli>But its main limitation are the fact that
it's basically a static approach.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/26-1
00:01:07.508 --> 00:01:11.553
<v Giorgio Ghelli>The dynamic versions are not very
satisfactory.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/26-2
00:01:11.553 --> 00:01:17.789
<v Giorgio Ghelli>And the second limitation is the fact
that it cannot really deal with the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/26-3
00:01:17.789 --> 00:01:20.823
<v Giorgio Ghelli>interval queries. It's very good for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/31-0
00:01:20.903 --> 00:01:27.603
<v Giorgio Ghelli>equality search, but interval search,
a range search is not dealt very well</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/31-1
00:01:27.603 --> 00:01:31.306
<v Giorgio Ghelli>with.
And hence we are looking at the 4th</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/31-2
00:01:31.306 --> 00:01:37.301
<v Giorgio Ghelli>organisations, organisation,
data organisation that we are going to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/31-3
00:01:37.301 --> 00:01:38.623
<v Giorgio Ghelli>study, which is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/36-0
00:01:39.903 --> 00:01:47.431
<v Giorgio Ghelli>three organizations, B3.
It is not the last because it is the best.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/36-1
00:01:47.431 --> 00:01:53.630
<v Giorgio Ghelli>It is just the 4th out of four different
organizations,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/36-2
00:01:53.630 --> 00:02:00.383
<v Giorgio Ghelli>each of which has its own merits and
demerits. It's not like</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/41-0
00:02:00.863 --> 00:02:06.643
<v Giorgio Ghelli>an ascension from worst to best.
It's just four different ways,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/41-1
00:02:06.643 --> 00:02:12.062
<v Giorgio Ghelli>each of which has its own situation where
it's very strong,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/41-2
00:02:12.062 --> 00:02:18.383
<v Giorgio Ghelli>a situation where it's not that strong.
So we have seen what is a B3,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/45-0
00:02:19.583 --> 00:02:28.833
<v Giorgio Ghelli>We have defined a B-tree using a picture,
and hence the basic idea is that a B-tree</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/45-1
00:02:28.833 --> 00:02:36.652
<v Giorgio Ghelli>is first of all a search tree.
That is a tree where you have N records</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/45-2
00:02:36.652 --> 00:02:38.303
<v Giorgio Ghelli>and N plus one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/50-0
00:02:38.463 --> 00:02:44.365
<v Giorgio Ghelli>Pointers such that all the records here
have a key which is smaller than this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/50-1
00:02:44.365 --> 00:02:49.072
<v Giorgio Ghelli>which is smaller than all the records
here, smaller than this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/50-2
00:02:49.072 --> 00:02:54.526
<v Giorgio Ghelli>smaller than those, more than etcetera,
etcetera. This is a search tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/50-3
00:02:54.526 --> 00:02:57.663
<v Giorgio Ghelli>Every B tree has a given order, let's say.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/55-0
00:02:58.703 --> 00:03:05.671
<v Giorgio Ghelli>let's call it M, small M, the order,
where the order of a tree is the maximum</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/55-1
00:03:05.671 --> 00:03:11.121
<v Giorgio Ghelli>number of children,
sometimes also called the fan out of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/55-2
00:03:11.121 --> 00:03:17.463
<v Giorgio Ghelli>tree. The B tree has a order M,
every node contains at most M pointer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/61-0
00:03:17.583 --> 00:03:23.556
<v Giorgio Ghelli>to the children and at most m - 1 records.
In the B tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/61-1
00:03:23.556 --> 00:03:29.940
<v Giorgio Ghelli>the records are either in the leaves or
in the internal node.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/61-2
00:03:29.940 --> 00:03:37.663
<v Giorgio Ghelli>This indication 14 star means the record
where the value of the key is 14.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/61-3
00:03:37.663 --> 00:03:42.503
<v Giorgio Ghelli>14 is the key,
star is the rest of the record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/65-0
00:03:42.503 --> 00:03:45.969
<v Giorgio Ghelli>record,
we will see that in the B plus tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/65-1
00:03:45.969 --> 00:03:51.437
<v Giorgio Ghelli>which is the standard organization,
the record are just in the leaves.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/65-2
00:03:51.437 --> 00:03:56.443
<v Giorgio Ghelli>But in the basic C tree,
the records are distributed like leaves</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/65-3
00:03:56.443 --> 00:03:57.983
<v Giorgio Ghelli>or leaves or leaves.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/68-0
00:04:01.183 --> 00:04:06.824
<v Giorgio Ghelli>It is perfectly balanced, as you see,
all the leaves are exactly at the same</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/68-1
00:04:06.824 --> 00:04:07.263
<v Giorgio Ghelli>level.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/70-0
00:04:09.903 --> 00:04:17.023
<v Giorgio Ghelli>Every node has at most m - 1 keys,
and at least...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/72-0
00:04:18.183 --> 00:04:20.863
<v Giorgio Ghelli>M divided by 2 - 1 now.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/77-0
00:04:22.703 --> 00:04:27.603
<v Giorgio Ghelli>This happens when you split the tree
which had M keys,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/77-1
00:04:27.603 --> 00:04:33.482
<v Giorgio Ghelli>then you get two children,
M divided divided by two and one is in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/77-2
00:04:33.482 --> 00:04:38.293
<v Giorgio Ghelli>there. Except the root,
as we've discussed last time,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/77-3
00:04:38.293 --> 00:04:41.143
<v Giorgio Ghelli>the root may have as few as just</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/79-0
00:04:41.343 --> 00:04:42.543
<v Giorgio Ghelli>Two children.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/82-0
00:04:47.663 --> 00:04:52.220
<v Giorgio Ghelli>And every time a node that contains J
records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/82-1
00:04:52.220 --> 00:04:55.903
<v Giorgio Ghelli>it has j + 1 pointers to the children.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/84-0
00:04:57.583 --> 00:05:00.623
<v Giorgio Ghelli>These pointers are not present in the
lips.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/87-0
00:05:04.783 --> 00:05:09.341
<v Giorgio Ghelli>So, essentially,
every node contains a pointer, a pointer,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/87-1
00:05:09.341 --> 00:05:11.503
<v Giorgio Ghelli>and finishes with a pointer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/90-0
00:05:15.583 --> 00:05:20.090
<v Giorgio Ghelli>And then what happens is that all
elements here have a key which is smaller</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/90-1
00:05:20.090 --> 00:05:22.343
<v Giorgio Ghelli>than this, which is smaller than both.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/93-0
00:05:26.223 --> 00:05:29.743
<v Giorgio Ghelli>And finally, where we arrived last time,
sir.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/94-0
00:05:32.143 --> 00:05:33.823
<v Giorgio Ghelli>We observed that that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/97-0
00:05:39.383 --> 00:05:41.343
<v Giorgio Ghelli>The amount of the...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/100-0
00:05:43.983 --> 00:05:49.263
<v Giorgio Ghelli>Of records that you put in every level
depends on.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/105-0
00:05:53.743 --> 00:05:58.087
<v Giorgio Ghelli>grows exponentially with the number of
children.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/105-1
00:05:58.087 --> 00:06:02.164
<v Giorgio Ghelli>So if we hate the one you have just one
node,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/105-2
00:06:02.164 --> 00:06:06.419
<v Giorgio Ghelli>but if every node in level one has 40
children,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/105-3
00:06:06.419 --> 00:06:12.623
<v Giorgio Ghelli>then at level 2 you have already 40 + 1,
level 3 you have 1 + 40 plus</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/107-0
00:06:13.183 --> 00:06:15.903
<v Giorgio Ghelli>40 square children.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/109-0
00:06:20.623 --> 00:06:21.263
<v Giorgio Ghelli>So.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/112-0
00:06:28.543 --> 00:06:33.103
<v Giorgio Ghelli>The number of level that you have depends,
of course, on how...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/115-0
00:06:35.543 --> 00:06:40.223
<v Giorgio Ghelli>Cool are the leaves, if every leaf has.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/120-0
00:06:42.383 --> 00:06:49.077
<v Giorgio Ghelli>is completely full, M,
you have been able to push m - 1 children</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/120-1
00:06:49.077 --> 00:06:53.814
<v Giorgio Ghelli>in any leaf,
then essentially the height is a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/120-2
00:06:53.814 --> 00:07:01.023
<v Giorgio Ghelli>logarithm of the number of record in base
M. If, however, every level</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/124-0
00:07:01.543 --> 00:07:06.617
<v Giorgio Ghelli>is full just 50%,
then the number of children is equal to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/124-1
00:07:06.617 --> 00:07:12.215
<v Giorgio Ghelli>the logarithm in base 50%.
To be more precise, if you are very,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/124-2
00:07:12.215 --> 00:07:16.063
<v Giorgio Ghelli>very unlucky and you have M divided by
two,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/125-0
00:07:17.383 --> 00:07:18.303
<v Giorgio Ghelli>AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/129-0
00:07:20.063 --> 00:07:25.053
<v Giorgio Ghelli>Children in every node about the root,
and you have the root,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/129-1
00:07:25.053 --> 00:07:30.847
<v Giorgio Ghelli>whether you have just two children,
then you have one entire level more</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/129-2
00:07:30.847 --> 00:07:33.503
<v Giorgio Ghelli>because the root is almost empty.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/134-0
00:07:34.583 --> 00:07:40.688
<v Giorgio Ghelli>And of course, here I divided by two,
because you have the left children of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/134-1
00:07:40.688 --> 00:07:46.640
<v Giorgio Ghelli>root plus the right children of the root,
each of which has N divided by two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/134-2
00:07:46.640 --> 00:07:50.150
<v Giorgio Ghelli>All of this just to explain you this
formula,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/134-3
00:07:50.150 --> 00:07:53.583
<v Giorgio Ghelli>but please you can just forget this
formula.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/139-0
00:07:53.903 --> 00:08:02.052
<v Giorgio Ghelli>we will just generally say that you have
the height can be approximated by the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/139-1
00:08:02.052 --> 00:08:08.550
<v Giorgio Ghelli>logarithm of the number of records in
base and divided by two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/139-2
00:08:08.550 --> 00:08:14.223
<v Giorgio Ghelli>Very often we will just be optimistic and
say in base.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/143-0
00:08:14.263 --> 00:08:17.128
<v Giorgio Ghelli>M,
we pretend that everything is very full.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/143-1
00:08:17.128 --> 00:08:21.165
<v Giorgio Ghelli>So very often we just use this formula,
but this, as you see,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/143-2
00:08:21.165 --> 00:08:25.528
<v Giorgio Ghelli>is just an approximation.
Better formula would be to use M divided</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/143-3
00:08:25.528 --> 00:08:25.983
<v Giorgio Ghelli>by two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/148-0
00:08:27.903 --> 00:08:33.489
<v Giorgio Ghelli>So if you have 100 children per node,
we a lot of time say, yeah, okay,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/148-1
00:08:33.489 --> 00:08:39.153
<v Giorgio Ghelli>one node already 100 records to node the
100 square, 3 levels, 100 cube.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/148-2
00:08:39.153 --> 00:08:42.567
<v Giorgio Ghelli>But actually, that's very,
very optimistic.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/148-3
00:08:42.567 --> 00:08:47.532
<v Giorgio Ghelli>It's a little bit optimistic.
But if you just divide it by two,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/148-4
00:08:47.532 --> 00:08:48.463
<v Giorgio Ghelli>then you are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/149-0
00:08:49.343 --> 00:08:51.183
<v Giorgio Ghelli>In the real range.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/155-0
00:08:52.263 --> 00:08:56.043
<v Giorgio Ghelli>Now,
how much does it cost to search for a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/155-1
00:08:56.043 --> 00:09:01.053
<v Giorgio Ghelli>record using a B-tree? Well,
an equality search depends.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/155-2
00:09:01.053 --> 00:09:06.502
<v Giorgio Ghelli>If you are very lucky,
the record that you are looking for in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/155-3
00:09:06.502 --> 00:09:12.303
<v Giorgio Ghelli>the route, you just read the route.
If you are an average person,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/160-0
00:09:13.743 --> 00:09:19.893
<v Giorgio Ghelli>It is in the leaves.
Why I say that on average it is on the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/160-1
00:09:19.893 --> 00:09:27.068
<v Giorgio Ghelli>leaves? Because you have a big fan out.
If you have a fan out of 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/160-2
00:09:27.068 --> 00:09:33.423
<v Giorgio Ghelli>then the leaves alone contain 99% of the
data. Is that clear?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/162-0
00:09:35.023 --> 00:09:38.063
<v Giorgio Ghelli>If this is 10,101.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/167-0
00:09:39.183 --> 00:09:46.711
<v Giorgio Ghelli>So the ratio between what you find in the
leaves and what you find in the rest of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/167-1
00:09:46.711 --> 00:09:51.301
<v Giorgio Ghelli>the tree is 1 to 99.
So already with N equal 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/167-2
00:09:51.301 --> 00:09:57.084
<v Giorgio Ghelli>essentially 99% of the data is on the
leaves. So in principle,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/167-3
00:09:57.084 --> 00:09:59.103
<v Giorgio Ghelli>it is between 1 and H.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/169-0
00:09:59.343 --> 00:10:05.016
<v Giorgio Ghelli>But in practice, it is page.
You always get to have to go down to the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/169-1
00:10:05.016 --> 00:10:05.583
<v Giorgio Ghelli>leaves.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/172-0
00:10:08.143 --> 00:10:12.383
<v Giorgio Ghelli>Ranger search. Ranger search is.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/173-0
00:10:12.863 --> 00:10:13.823
<v Giorgio Ghelli>AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/178-0
00:10:20.463 --> 00:10:25.839
<v Giorgio Ghelli>More or less the same as in the
sequential case. Do you remember,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/178-1
00:10:25.839 --> 00:10:31.133
<v Giorgio Ghelli>in the sequential case,
we have said that the rage search is the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/178-2
00:10:31.133 --> 00:10:33.983
<v Giorgio Ghelli>cost to arrive to the first record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/182-0
00:10:36.223 --> 00:10:43.583
<v Giorgio Ghelli>And that, and that one was in the case,
well, logarithm in base two, if you use...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/188-0
00:10:47.583 --> 00:10:52.863
<v Giorgio Ghelli>by bisection and logarithm of logarithm
if you use interpolation.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/188-1
00:10:52.863 --> 00:10:57.663
<v Giorgio Ghelli>So this is the course that will arrive to
the first record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/188-2
00:10:57.663 --> 00:11:02.783
<v Giorgio Ghelli>Here the course to arrive to the first
record is essentially H.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/192-0
00:11:03.983 --> 00:11:09.986
<v Giorgio Ghelli>plus the cost to read all the records
that you are selecting,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/192-1
00:11:09.986 --> 00:11:17.343
<v Giorgio Ghelli>but all these records are consecutive.
So if you want to read 1000 records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/197-0
00:11:19.103 --> 00:11:22.734
<v Giorgio Ghelli>in a range, well,
if the data is not sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/197-1
00:11:22.734 --> 00:11:29.351
<v Giorgio Ghelli>you will need typically to read the 1000
pages because the records are scattered.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/197-2
00:11:29.351 --> 00:11:34.031
<v Giorgio Ghelli>But if the data is sorted,
as happens with the sequential</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/197-3
00:11:34.031 --> 00:11:37.823
<v Giorgio Ghelli>organisation and with the B-tree
organization,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/202-0
00:11:38.143 --> 00:11:44.880
<v Giorgio Ghelli>Then the cost in order to read this
number of records is just this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/202-1
00:11:44.880 --> 00:11:52.112
<v Giorgio Ghelli>Simply you product of the selectivity
factors times the number of nodes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/202-2
00:11:52.112 --> 00:11:57.263
<v Giorgio Ghelli>not selectivity factor times the number
of records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/204-0
00:11:57.343 --> 00:12:00.703
<v Giorgio Ghelli>If you are going to read the 10%...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/205-0
00:12:02.783 --> 00:12:04.703
<v Giorgio Ghelli>Of the day, hey, Corta.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/211-0
00:12:06.303 --> 00:12:12.256
<v Giorgio Ghelli>You just need to read the 10% of the
nodes, because the records are clustered,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/211-1
00:12:12.256 --> 00:12:17.380
<v Giorgio Ghelli>are one near to the other,
and hence you get the 10% of the records</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/211-2
00:12:17.380 --> 00:12:22.655
<v Giorgio Ghelli>by reading 10% of the nodes.
That's extremely important. If the data,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/211-3
00:12:22.655 --> 00:12:24.463
<v Giorgio Ghelli>when data is not sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/216-0
00:12:24.703 --> 00:12:28.596
<v Giorgio Ghelli>Then in order to read the 10% of the
records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/216-1
00:12:28.596 --> 00:12:35.280
<v Giorgio Ghelli>you read that if 10% of the record is
1000, you read 1000 pages. But here, no,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/216-2
00:12:35.280 --> 00:12:40.019
<v Giorgio Ghelli>here you read just 1000 notes. Sorry,
10% of the notes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/216-3
00:12:40.019 --> 00:12:44.503
<v Giorgio Ghelli>which if you have 100 record per page,
it means just</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/220-0
00:12:44.623 --> 00:12:50.840
<v Giorgio Ghelli>10 pages rather than 1000.
That's extremely important. So the B3,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/220-1
00:12:50.840 --> 00:12:58.188
<v Giorgio Ghelli>one very strong point of the B3 is that
they are almost optimal for the range</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/220-2
00:12:58.188 --> 00:13:03.463
<v Giorgio Ghelli>search, very good for a quality search,
almost optimal.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/221-0
00:13:03.623 --> 00:13:04.943
<v Giorgio Ghelli>For raid, sir.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/225-0
00:13:06.143 --> 00:13:10.349
<v Giorgio Ghelli>Well,
if we compare B3 with sequential</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/225-1
00:13:10.349 --> 00:13:16.818
<v Giorgio Ghelli>organization, well,
B3 probably are faster to arrive at the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/225-2
00:13:16.818 --> 00:13:18.543
<v Giorgio Ghelli>first node node.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/230-0
00:13:19.783 --> 00:13:25.618
<v Giorgio Ghelli>But then they are slightly lower than the
sequential organization,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/230-1
00:13:25.618 --> 00:13:30.321
<v Giorgio Ghelli>because in the in the static sequential
organization,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/230-2
00:13:30.321 --> 00:13:36.331
<v Giorgio Ghelli>all records are compressed in the sense
they are. I mean, in a leaf,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/230-3
00:13:36.331 --> 00:13:38.943
<v Giorgio Ghelli>you only find records in a B3.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/232-0
00:13:39.103 --> 00:13:44.943
<v Giorgio Ghelli>In a leaf is full somehow between 50 and
100%.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/234-0
00:13:46.383 --> 00:13:49.393
<v Giorgio Ghelli>So,
you have a little bit of junk that you</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/234-1
00:13:49.393 --> 00:13:49.743
<v Giorgio Ghelli>read.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/239-0
00:13:52.463 --> 00:14:00.818
<v Giorgio Ghelli>That still is almost optimum. Insertion.
Insertion in a B-tree. First of all,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/239-1
00:14:00.818 --> 00:14:05.423
<v Giorgio Ghelli>when you insert in a leaf, sorry,
when you</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/240-0
00:14:06.543 --> 00:14:07.583
<v Giorgio Ghelli>Insert that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/243-0
00:14:08.943 --> 00:14:15.246
<v Giorgio Ghelli>new record,
that record may end up in a leaf or may</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/243-1
00:14:15.246 --> 00:14:16.943
<v Giorgio Ghelli>end up, sorry.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/248-0
00:14:19.023 --> 00:14:25.223
<v Giorgio Ghelli>When you insert a new record,
that record is always inserted in a leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/248-1
00:14:25.223 --> 00:14:30.218
<v Giorgio Ghelli>Because what does it happen when you
insert a new record?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/248-2
00:14:30.218 --> 00:14:36.332
<v Giorgio Ghelli>That you first of all do a search to find
where this record should go,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/248-3
00:14:36.332 --> 00:14:37.623
<v Giorgio Ghelli>and this search</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-0
00:14:37.703 --> 00:14:41.823
<v Giorgio Ghelli>always ends in a leaf.
Searches only always end in a leaf when</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-1
00:14:41.823 --> 00:14:44.897
<v Giorgio Ghelli>you do not,
when you search for a position for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-2
00:14:44.897 --> 00:14:48.493
<v Giorgio Ghelli>something new.
If you are searching for something that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-3
00:14:48.493 --> 00:14:51.502
<v Giorgio Ghelli>already exists,
you may find that everywhere.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-4
00:14:51.502 --> 00:14:55.491
<v Giorgio Ghelli>But if you're searching for a place we
have to put a record,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/253-5
00:14:55.491 --> 00:14:57.583
<v Giorgio Ghelli>you always end up in a position.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/258-0
00:14:57.823 --> 00:15:05.967
<v Giorgio Ghelli>leaf. So you have to do a situation. If,
for example, I want to insert a record 31,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/258-1
00:15:05.967 --> 00:15:12.656
<v Giorgio Ghelli>why not? 31 is not, let's say 29,
the position for another 29 or 29.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/258-2
00:15:12.656 --> 00:15:17.503
<v Giorgio Ghelli>5 is here. If the leaf still have space,
you just</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/261-0
00:15:17.663 --> 00:15:25.414
<v Giorgio Ghelli>Put the record there, and that's it.
If the leaf is already full, for example,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/261-1
00:15:25.414 --> 00:15:28.063
<v Giorgio Ghelli>I need, I want to insert 6.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/263-0
00:15:29.423 --> 00:15:34.783
<v Giorgio Ghelli>and then its place is here,
then you have to split the leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/269-0
00:15:37.583 --> 00:15:44.347
<v Giorgio Ghelli>splitting the leaves,
the leaf produces 2 leaves full at 50%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/269-1
00:15:44.347 --> 00:15:50.456
<v Giorgio Ghelli>minus 1 actually,
plus 1 record that must go in the one</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/269-2
00:15:50.456 --> 00:15:57.983
<v Giorgio Ghelli>level high. So in order to split this,
you will substitute this with</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/273-0
00:15:58.303 --> 00:16:02.418
<v Giorgio Ghelli>two, three, 6, 7.
Notice that the six that you are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/273-1
00:16:02.418 --> 00:16:07.178
<v Giorgio Ghelli>inserting end up here, but five,
the median value goes up.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/273-2
00:16:07.178 --> 00:16:12.986
<v Giorgio Ghelli>Now you have two possibilities.
Either the label app has space and then</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/273-3
00:16:12.986 --> 00:16:17.423
<v Giorgio Ghelli>five goes there, end of the story,
or the label app is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/277-0
00:16:17.503 --> 00:16:21.996
<v Giorgio Ghelli>Full, as in this case,
and in this case you must also split the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/277-1
00:16:21.996 --> 00:16:25.225
<v Giorgio Ghelli>level up,
so splitting always starts from the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/277-2
00:16:25.225 --> 00:16:28.384
<v Giorgio Ghelli>leaves,
but may go up and up up to the root.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/277-3
00:16:28.384 --> 00:16:31.823
<v Giorgio Ghelli>If the root is full,
you will create a new root.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/281-0
00:16:38.543 --> 00:16:44.823
<v Giorgio Ghelli>So, here you move five up one level,
then you need to split the router.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/286-0
00:16:45.863 --> 00:16:49.811
<v Giorgio Ghelli>And you get two halves,
one with five and 10,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/286-1
00:16:49.811 --> 00:16:56.763
<v Giorgio Ghelli>the other one with 23 and 30, and 17,
the value in the middle goes up one level.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/286-2
00:16:56.763 --> 00:17:02.942
<v Giorgio Ghelli>And now we have a new route to just two
children, and then this is 50%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/286-3
00:17:02.942 --> 00:17:04.143
<v Giorgio Ghelli>and this is...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/287-0
00:17:05.623 --> 00:17:08.703
<v Giorgio Ghelli>Fifty percent, because we had split it.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/289-0
00:17:13.983 --> 00:17:14.383
<v Giorgio Ghelli>So.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/292-0
00:17:15.663 --> 00:17:20.783
<v Giorgio Ghelli>The worst case for insertion,
you have to read.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/297-0
00:17:21.663 --> 00:17:27.195
<v Giorgio Ghelli>one page for each level of the original
file,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/297-1
00:17:27.195 --> 00:17:34.411
<v Giorgio Ghelli>and then you have to write 2 pages for
each level plus one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/297-2
00:17:34.411 --> 00:17:40.303
<v Giorgio Ghelli>So the worst case cost is H reads 2H + 1
writes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/302-0
00:17:41.983 --> 00:17:46.697
<v Giorgio Ghelli>Of course,
the probability that this happens are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/302-1
00:17:46.697 --> 00:17:54.201
<v Giorgio Ghelli>incredibly low. To arrive to this case,
you arrive to this case only when you</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/302-2
00:17:54.201 --> 00:18:00.743
<v Giorgio Ghelli>move from 8 to 2 to 8 to 3.
And then you wait until you move from 8</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/305-0
00:18:00.863 --> 00:18:05.084
<v Giorgio Ghelli>The three to four,
which will happen after 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/305-1
00:18:05.084 --> 00:18:09.393
<v Giorgio Ghelli>000 insertions,
so the real typical case for the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/305-2
00:18:09.393 --> 00:18:12.383
<v Giorgio Ghelli>insertion is the right either two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/308-0
00:18:13.903 --> 00:18:21.320
<v Giorgio Ghelli>one to read, one to write,
or in the worst case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/308-1
00:18:21.320 --> 00:18:25.103
<v Giorgio Ghelli>two read and three write.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/313-0
00:18:26.823 --> 00:18:31.007
<v Giorgio Ghelli>To read,
you read the leaf at the parent and free</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/313-1
00:18:31.007 --> 00:18:37.031
<v Giorgio Ghelli>writes that leaf leaf parent.
This happens only once every M insertion.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/313-2
00:18:37.031 --> 00:18:40.880
<v Giorgio Ghelli>If M is 100,
this really happens after 100 of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/313-3
00:18:40.880 --> 00:18:44.143
<v Giorgio Ghelli>insertion, actually after 50 insertion.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/315-0
00:18:45.023 --> 00:18:48.783
<v Giorgio Ghelli>So, it's very rare,
so the typical cost is just...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/317-0
00:18:49.743 --> 00:18:53.583
<v Giorgio Ghelli>Finding the leaves, the leaf plus.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/319-0
00:18:55.103 --> 00:18:59.183
<v Giorgio Ghelli>They writing one page, so h + 1.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/320-0
00:19:00.383 --> 00:19:00.823
<v Giorgio Ghelli>Nour.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/326-0
00:19:06.383 --> 00:19:15.536
<v Giorgio Ghelli>Let's go back to the equality search.
I told you that equality search is a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/326-1
00:19:15.536 --> 00:19:22.736
<v Giorgio Ghelli>number that lies between 1 and H,
but most typically is H.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/326-2
00:19:22.736 --> 00:19:25.543
<v Giorgio Ghelli>This is not necessarily</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/332-0
00:19:25.743 --> 00:19:33.149
<v Giorgio Ghelli>how we will compute that. First of all,
we will typically assume that for a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/332-1
00:19:33.149 --> 00:19:39.775
<v Giorgio Ghelli>B-tree that is often used,
so that is important to be evaluated for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/332-2
00:19:39.775 --> 00:19:45.816
<v Giorgio Ghelli>performance reason,
because if a B-tree which is almost never</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/332-3
00:19:45.816 --> 00:19:46.303
<v Giorgio Ghelli>used.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/336-0
00:19:46.463 --> 00:19:53.324
<v Giorgio Ghelli>Who cares? If it is often used,
then the root will typically be in main</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/336-1
00:19:53.324 --> 00:19:58.088
<v Giorgio Ghelli>memory.
So we will always assume that the root of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/336-2
00:19:58.088 --> 00:20:01.423
<v Giorgio Ghelli>a bitree is already in main memory.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/340-0
00:20:02.783 --> 00:20:07.711
<v Giorgio Ghelli>Very often,
we will also assume that the same is true</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/340-1
00:20:07.711 --> 00:20:13.735
<v Giorgio Ghelli>for all the intermediate levels.
Is that reasonable or not? Well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/340-2
00:20:13.735 --> 00:20:20.762
<v Giorgio Ghelli>we will often assume that the fan out of
these three is in the order of many</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/340-3
00:20:20.762 --> 00:20:21.583
<v Giorgio Ghelli>hundreds.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/345-0
00:20:22.383 --> 00:20:27.226
<v Giorgio Ghelli>In this case,
all the intermediate levels put together,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/345-1
00:20:27.226 --> 00:20:33.020
<v Giorgio Ghelli>if you have 100 of an out,
all the intermediate levels are just 1%</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/345-2
00:20:33.020 --> 00:20:38.641
<v Giorgio Ghelli>of the data structure.
So having 1% of the most commonly used 1%</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/345-3
00:20:38.641 --> 00:20:40.543
<v Giorgio Ghelli>of the data structure.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/347-0
00:20:41.183 --> 00:20:46.365
<v Giorgio Ghelli>Already,
investor is quite a reasonable perception,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/347-1
00:20:46.365 --> 00:20:46.863
<v Giorgio Ghelli>so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/349-0
00:20:48.183 --> 00:20:49.663
<v Giorgio Ghelli>Whenever we will.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/354-0
00:20:51.783 --> 00:20:57.076
<v Giorgio Ghelli>evaluate the cost of access,
we will either use h - 1 or just one,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/354-1
00:20:57.076 --> 00:21:03.711
<v Giorgio Ghelli>depending on whether we are assuming that
only the root is already in buffer or all</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/354-2
00:21:03.711 --> 00:21:07.423
<v Giorgio Ghelli>the intermediate levels are already in
buffer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/357-0
00:21:16.943 --> 00:21:17.823
<v Giorgio Ghelli>Lily Shona.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/359-0
00:21:20.103 --> 00:21:21.663
<v Giorgio Ghelli>When, uh...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/362-0
00:21:23.023 --> 00:21:28.975
<v Giorgio Ghelli>We, you know, to delete the echo,
we first find it, and then we delete it.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/362-1
00:21:28.975 --> 00:21:32.943
<v Giorgio Ghelli>If we find it in a leaf node,
you just delete it.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/367-0
00:21:34.223 --> 00:21:40.093
<v Giorgio Ghelli>If you find a key which is in a leaf that
is intermediate, well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/367-1
00:21:40.093 --> 00:21:47.497
<v Giorgio Ghelli>then you first of all retrieve the next,
the key which is immediately after this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/367-2
00:21:47.497 --> 00:21:52.463
<v Giorgio Ghelli>And notice that even if you are very high
in the tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/369-0
00:21:52.943 --> 00:21:59.583
<v Giorgio Ghelli>The key that is immediately next is in a
leaf. Why is that?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/371-0
00:22:01.583 --> 00:22:02.223
<v Giorgio Ghelli>Because.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/374-0
00:22:05.343 --> 00:22:10.528
<v Giorgio Ghelli>If you go just one level, day three,
which is immediately after this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/374-1
00:22:10.528 --> 00:22:13.343
<v Giorgio Ghelli>is the leftmost in the leftmost child.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/379-0
00:22:14.703 --> 00:22:20.535
<v Giorgio Ghelli>One level, leftmost is the leftmost child,
one level, until you arrive to the leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/379-1
00:22:20.535 --> 00:22:23.797
<v Giorgio Ghelli>So if this is 17,
the next one is in the leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/379-2
00:22:23.797 --> 00:22:27.893
<v Giorgio Ghelli>It's never in an intermediate.
So in order to delete this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/379-3
00:22:27.893 --> 00:22:32.058
<v Giorgio Ghelli>you just take the next one out of the
leaf, move that here,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/379-4
00:22:32.058 --> 00:22:33.863
<v Giorgio Ghelli>and you delete an element.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/383-0
00:22:33.983 --> 00:22:38.991
<v Giorgio Ghelli>from a leaf. So in a sense,
exactly like when you insert,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/383-1
00:22:38.991 --> 00:22:45.380
<v Giorgio Ghelli>you always insert in the leaf,
when you delete it, at the end of the day,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/383-2
00:22:45.380 --> 00:22:48.143
<v Giorgio Ghelli>you always delete from the leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/385-0
00:22:50.863 --> 00:22:53.743
<v Giorgio Ghelli>Once you have deleted from a leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/389-0
00:22:58.943 --> 00:23:04.690
<v Giorgio Ghelli>You may end up with a leaf that is not
full enough.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/389-1
00:23:04.690 --> 00:23:09.663
<v Giorgio Ghelli>We want every leaf to have at least m - 2
m.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/394-0
00:23:11.423 --> 00:23:17.618
<v Giorgio Ghelli>and divided by two, -1 element, 50%,
every leaf mass and full.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/394-1
00:23:17.618 --> 00:23:24.010
<v Giorgio Ghelli>What you do when a leaf is 49%,
exactly as you do with a dynamic</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/394-2
00:23:24.010 --> 00:23:30.303
<v Giorgio Ghelli>sequential organization.
You merge this leaf with the next one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/397-0
00:23:32.303 --> 00:23:37.903
<v Giorgio Ghelli>So is the next one is 80, 80 plus 50,
130 divided by 65 by 65.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/402-0
00:23:46.223 --> 00:23:50.546
<v Giorgio Ghelli>Another possibility is that instead of
just merging,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/402-1
00:23:50.546 --> 00:23:54.543
<v Giorgio Ghelli>you may just move one element from the
next one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/407-0
00:23:57.023 --> 00:24:01.686
<v Giorgio Ghelli>We prefer to merge usually,
because in this way we have two leaves</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/407-1
00:24:01.686 --> 00:24:06.627
<v Giorgio Ghelli>which are both a little bit more distant
from the 50%. So for a while,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/407-2
00:24:06.627 --> 00:24:11.220
<v Giorgio Ghelli>you do not need to repeat this operation.
But that's a very pain.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/407-3
00:24:11.220 --> 00:24:15.743
<v Giorgio Ghelli>If deleting is extremely rare,
you don't care. Just one element.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/410-0
00:24:15.903 --> 00:24:19.952
<v Giorgio Ghelli>and then you will add insert and insert
and insert. If delete is common,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/410-1
00:24:19.952 --> 00:24:24.223
<v Giorgio Ghelli>then it's better to do the rebalance.
This operation is called the rotation.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/416-0
00:24:26.863 --> 00:24:32.783
<v Giorgio Ghelli>Because you know that to do this,
say you need to move an element down from</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/416-1
00:24:32.783 --> 00:24:38.936
<v Giorgio Ghelli>up there and to move an element here.
Here I just moving one element if I want</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/416-2
00:24:38.936 --> 00:24:44.933
<v Giorgio Ghelli>to rebalance. So to move many elements,
I will do many rotations. Of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/416-3
00:24:44.933 --> 00:24:47.503
<v Giorgio Ghelli>the rotation requires you to read</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/417-0
00:24:47.663 --> 00:24:52.543
<v Giorgio Ghelli>Three pages and write 3 pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/419-0
00:24:57.023 --> 00:24:57.663
<v Giorgio Ghelli>Again?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/425-0
00:24:59.343 --> 00:25:05.263
<v Giorgio Ghelli>As you see, all of this is very local.
So every time you do an insertion,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/425-1
00:25:05.263 --> 00:25:09.903
<v Giorgio Ghelli>the deletion, etc.,
if you assume that age is very small,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/425-2
00:25:09.903 --> 00:25:13.423
<v Giorgio Ghelli>which we do assume,
then in the worst case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/425-3
00:25:13.423 --> 00:25:17.583
<v Giorgio Ghelli>you still need a very limited number of
operations.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/429-0
00:25:18.943 --> 00:25:21.812
<v Giorgio Ghelli>So,
the B3 is an organisation which is very</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/429-1
00:25:21.812 --> 00:25:25.594
<v Giorgio Ghelli>dynamic. I mean,
it's you can do a lot of insert, delete,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/429-2
00:25:25.594 --> 00:25:29.507
<v Giorgio Ghelli>insert, delete, adding the file,
getting bigger and bigger,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/429-3
00:25:29.507 --> 00:25:33.485
<v Giorgio Ghelli>smaller and smaller, bigger and bigger,
smaller and smaller,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/429-4
00:25:33.485 --> 00:25:36.223
<v Giorgio Ghelli>but you never need to reorganise the file.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/436-0
00:25:42.063 --> 00:25:48.407
<v Giorgio Ghelli>Okay, after a certain number of rotation,
what will happen, or of rebalancing,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/436-1
00:25:48.407 --> 00:25:54.912
<v Giorgio Ghelli>what will happen is that you will end up
with two pages that are both below 50%.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/436-2
00:25:54.912 --> 00:26:00.453
<v Giorgio Ghelli>I'm deleting from the first one,
is getting element from the second,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/436-3
00:26:00.453 --> 00:26:03.103
<v Giorgio Ghelli>from the second, from the second.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/437-0
00:26:03.343 --> 00:26:07.437
<v Giorgio Ghelli>At some point,
the second user arrives at the 50% as</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/437-1
00:26:07.437 --> 00:26:07.823
<v Giorgio Ghelli>well.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/439-0
00:26:08.863 --> 00:26:13.743
<v Giorgio Ghelli>At this point, once you arrive,
the two pages are both.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/445-0
00:26:15.983 --> 00:26:21.797
<v Giorgio Ghelli>below 50%, you will merge,
you will merge the two pages plus the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/445-1
00:26:21.797 --> 00:26:27.163
<v Giorgio Ghelli>intermediate element.
So you will do this only when both of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/445-2
00:26:27.163 --> 00:26:34.407
<v Giorgio Ghelli>them are below M divided by 2 minus 1,
because you have to get that element from</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/445-3
00:26:34.407 --> 00:26:34.943
<v Giorgio Ghelli>above.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/448-0
00:26:41.823 --> 00:26:46.463
<v Giorgio Ghelli>Okay, so in the worst case,
you have to read that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/453-0
00:26:47.583 --> 00:26:53.923
<v Giorgio Ghelli>Two 100 and sorry,
2 H reads for every level you read the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/453-1
00:26:53.923 --> 00:26:59.498
<v Giorgio Ghelli>two pages,
and for every level you write one page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/453-2
00:26:59.498 --> 00:27:07.367
<v Giorgio Ghelli>Let the forget the -1 + 1. Sorry,
the basic idea is that if you merge 2</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/453-3
00:27:07.367 --> 00:27:08.023
<v Giorgio Ghelli>pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/455-0
00:27:08.223 --> 00:27:11.743
<v Giorgio Ghelli>You are deleting one element from the
parent, okay?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/459-0
00:27:12.663 --> 00:27:16.376
<v Giorgio Ghelli>And now maybe when I delete one element
from the parent,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/459-1
00:27:16.376 --> 00:27:19.502
<v Giorgio Ghelli>I must also merge the parent with the
next one,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/459-2
00:27:19.502 --> 00:27:22.759
<v Giorgio Ghelli>and then delete one element from the
grandparent.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/459-3
00:27:22.759 --> 00:27:25.103
<v Giorgio Ghelli>That's the reason why you need that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/461-0
00:27:26.303 --> 00:27:31.743
<v Giorgio Ghelli>To read that one element for each, sorry,
two elements for each level.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/463-0
00:27:33.503 --> 00:27:37.737
<v Giorgio Ghelli>Parent and sibling,
and then marriage the two of them into</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/463-1
00:27:37.737 --> 00:27:38.383
<v Giorgio Ghelli>just one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/466-0
00:27:46.223 --> 00:27:46.703
<v Giorgio Ghelli>Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/471-0
00:27:48.063 --> 00:27:55.623
<v Giorgio Ghelli>That was the B3, the basic data structure.
Then a lot of other data structures that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/471-1
00:27:55.623 --> 00:28:02.643
<v Giorgio Ghelli>are related to that have been invented,
among which the B star tree and the B</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/471-2
00:28:02.643 --> 00:28:07.503
<v Giorgio Ghelli>plus tree.
Now I'm going to describe the B plus tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/476-0
00:28:07.623 --> 00:28:11.673
<v Giorgio Ghelli>which is essentially a variation of the
B-tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/476-1
00:28:11.673 --> 00:28:16.482
<v Giorgio Ghelli>which is the one that is most commonly
used in practice.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/476-2
00:28:16.482 --> 00:28:23.063
<v Giorgio Ghelli>The B plus tree differs from the B-tree
in that we would like to have all the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/476-3
00:28:23.063 --> 00:28:27.703
<v Giorgio Ghelli>records in the mixer.
So we put all the records in the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/479-0
00:28:28.143 --> 00:28:33.512
<v Giorgio Ghelli>So that if you want to do a table scan,
you can just read the leaves.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/479-1
00:28:33.512 --> 00:28:35.583
<v Giorgio Ghelli>We not need to go to the...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/484-0
00:28:38.383 --> 00:28:44.632
<v Giorgio Ghelli>higher level. At this point,
since you have all records in the trees</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/484-1
00:28:44.632 --> 00:28:50.247
<v Giorgio Ghelli>in the higher level,
you do not need to put the entire record</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/484-2
00:28:50.247 --> 00:28:56.859
<v Giorgio Ghelli>again, but just the key. So here,
you just choose the maximum key on any</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/484-3
00:28:56.859 --> 00:28:57.583
<v Giorgio Ghelli>page, 3,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/489-0
00:28:58.383 --> 00:29:09.462
<v Giorgio Ghelli>8, 16, 22, 29, 39.
And then you build a complete B3 here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/489-1
00:29:09.462 --> 00:29:17.103
<v Giorgio Ghelli>You see, this is a B3, 3, 8, 16, 22, 29.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/493-0
00:29:18.303 --> 00:29:22.473
<v Giorgio Ghelli>So up there,
I have the usual principle of the B-tree</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/493-1
00:29:22.473 --> 00:29:27.570
<v Giorgio Ghelli>that is, if I know that is already up,
you do not copy that down.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/493-2
00:29:27.570 --> 00:29:31.663
<v Giorgio Ghelli>So here in this path, the 16 is,
they are just once.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/496-0
00:29:32.823 --> 00:29:38.851
<v Giorgio Ghelli>But down here, you replicate the three,
replicate the 8, the 22, the 29,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/496-1
00:29:38.851 --> 00:29:44.383
<v Giorgio Ghelli>because here I want to have the entire
recorder, not just the key.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/501-0
00:29:46.583 --> 00:29:57.228
<v Giorgio Ghelli>A different way of describing the b + 3
is by saying that it is composed by two</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/501-1
00:29:57.228 --> 00:30:06.143
<v Giorgio Ghelli>parts, X sequential file.
This is exactly if you look at it alone.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/506-0
00:30:06.303 --> 00:30:12.403
<v Giorgio Ghelli>It is a sequential.
It is a dynamic sequential organization.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/506-1
00:30:12.403 --> 00:30:19.903
<v Giorgio Ghelli>Dynamic because the pages have some free
space. And then up to here, well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/506-2
00:30:19.903 --> 00:30:25.903
<v Giorgio Ghelli>this is just a sparse index.
We say that an index is dense.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/510-0
00:30:26.503 --> 00:30:31.387
<v Giorgio Ghelli>When in the index you have one pointer
for every record,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/510-1
00:30:31.387 --> 00:30:37.983
<v Giorgio Ghelli>we say that it is sparse when in the
index you have a pointer for each page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/515-0
00:30:39.143 --> 00:30:43.669
<v Giorgio Ghelli>When is it that you can use a sparse
index? When the data is sorted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/515-1
00:30:43.669 --> 00:30:47.801
<v Giorgio Ghelli>If the data is sorted,
it is okay to have just one pointer per</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/515-2
00:30:47.801 --> 00:30:50.687
<v Giorgio Ghelli>page,
because you already know that all the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/515-3
00:30:50.687 --> 00:30:55.343
<v Giorgio Ghelli>values between 3:00 and 8:00 are all here,
because the data is sorted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/520-0
00:30:57.023 --> 00:31:00.150
<v Giorgio Ghelli>So,
this is just a different way of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/520-1
00:31:00.150 --> 00:31:05.187
<v Giorgio Ghelli>describing this data structure.
Either you say, oh, look,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/520-2
00:31:05.187 --> 00:31:10.658
<v Giorgio Ghelli>this is 1 data structure, it is a b + 3,
or you say, oh, look,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/520-3
00:31:10.658 --> 00:31:13.263
<v Giorgio Ghelli>these are two data structures.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/523-0
00:31:14.223 --> 00:31:21.174
<v Giorgio Ghelli>This is a sequential file,
and this is a sparse index organised like</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/523-1
00:31:21.174 --> 00:31:25.103
<v Giorgio Ghelli>a B, not B plus B. This part here is B.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/525-0
00:31:26.623 --> 00:31:32.223
<v Giorgio Ghelli>The union of a sparsely tree plus a
sequential file is called b + 3.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/527-0
00:31:35.583 --> 00:31:36.063
<v Giorgio Ghelli>O.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/532-0
00:31:37.983 --> 00:31:46.789
<v Giorgio Ghelli>Why do we like B plus trees?
We like them because here in all this</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/532-1
00:31:46.789 --> 00:31:56.383
<v Giorgio Ghelli>upper level, we only have keys,
but do not have record. When records are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/537-0
00:31:57.103 --> 00:32:03.612
<v Giorgio Ghelli>big, but keys are just an integer,
so they are very small,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/537-1
00:32:03.612 --> 00:32:09.127
<v Giorgio Ghelli>and we may even compress them.
Then in this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/537-2
00:32:09.127 --> 00:32:14.863
<v Giorgio Ghelli>all this data can fit the main memory
quite easily.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/541-0
00:32:17.743 --> 00:32:21.512
<v Giorgio Ghelli>With the big tree,
it's difficult to put all of this data in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/541-1
00:32:21.512 --> 00:32:26.640
<v Giorgio Ghelli>my memory because there you have records
and maybe you have records which are very</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/541-2
00:32:26.640 --> 00:32:30.223
<v Giorgio Ghelli>big and thanks to that part of the tree
may be quite big.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/546-0
00:32:32.223 --> 00:32:36.969
<v Giorgio Ghelli>But with a B tree, B + 3,
this part of the tree is very small for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/546-1
00:32:36.969 --> 00:32:41.643
<v Giorgio Ghelli>two reasons. First reason,
because it only has to contain point,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/546-2
00:32:41.643 --> 00:32:45.166
<v Giorgio Ghelli>sorry,
pointers and integer that are smaller and</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/546-3
00:32:45.166 --> 00:32:50.343
<v Giorgio Ghelli>not the entire record with address, name,
family name, a lot of values.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/549-0
00:32:50.943 --> 00:32:55.150
<v Giorgio Ghelli>much smaller.
And then exactly for this reason,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/549-1
00:32:55.150 --> 00:32:59.270
<v Giorgio Ghelli>what happens is that the fan out,
the fan out,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/549-2
00:32:59.270 --> 00:33:02.863
<v Giorgio Ghelli>the order of these nodes can be very big.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/553-0
00:33:03.823 --> 00:33:13.397
<v Giorgio Ghelli>If you assume a page is 4K and we assume
that this is 4 bytes, this is 4 bytes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/553-1
00:33:13.397 --> 00:33:18.303
<v Giorgio Ghelli>then you can have 500 pointers for level.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/557-0
00:33:19.143 --> 00:33:24.749
<v Giorgio Ghelli>Five 100 pointers means essentially that
just adding one level,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/557-1
00:33:24.749 --> 00:33:30.441
<v Giorgio Ghelli>you increase the size of your file by
three orders of magnitude.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/557-2
00:33:30.441 --> 00:33:32.543
<v Giorgio Ghelli>Five 100 is almost 1000.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/562-0
00:33:33.823 --> 00:33:37.934
<v Giorgio Ghelli>So you go to 1000, millions, billions,
trillions, like that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/562-1
00:33:37.934 --> 00:33:41.775
<v Giorgio Ghelli>That's one level extra.
It was not true with the B-tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/562-2
00:33:41.775 --> 00:33:44.740
<v Giorgio Ghelli>because in the B-tree,
if these are bigger,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/562-3
00:33:44.740 --> 00:33:49.052
<v Giorgio Ghelli>if every record is bigger,
then the fan out cannot be that big.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/562-4
00:33:49.052 --> 00:33:51.343
<v Giorgio Ghelli>You need a little bit more levels.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/565-0
00:33:59.503 --> 00:34:02.433
<v Giorgio Ghelli>Okay,
hope I added some example of numbers I</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/565-1
00:34:02.433 --> 00:34:02.823
<v Giorgio Ghelli>don't.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/566-0
00:34:04.623 --> 00:34:05.023
<v Giorgio Ghelli>But...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/569-0
00:34:13.423 --> 00:34:15.743
<v Giorgio Ghelli>But you see a tree like this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/574-0
00:34:16.663 --> 00:34:23.742
<v Giorgio Ghelli>when it is completely full,
may have 500 key at this level,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/574-1
00:34:23.742 --> 00:34:32.943
<v Giorgio Ghelli>1/4 of a million keys at this level,
which means 1/4 of a million pages here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/576-0
00:34:35.303 --> 00:34:38.783
<v Giorgio Ghelli>which means a billion bytes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/579-0
00:34:40.383 --> 00:34:44.904
<v Giorgio Ghelli>So, it's already something,
but one level more,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/579-1
00:34:44.904 --> 00:34:47.823
<v Giorgio Ghelli>it it multiplies the size by 5.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/582-0
00:34:49.903 --> 00:34:55.525
<v Giorgio Ghelli>100,
so you have 500 billion bytes just with</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/582-1
00:34:55.525 --> 00:34:58.023
<v Giorgio Ghelli>three levels of the.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/586-0
00:35:00.063 --> 00:35:06.031
<v Giorgio Ghelli>of the B plus three.
So the B plus three has a fan out that is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/586-1
00:35:06.031 --> 00:35:12.188
<v Giorgio Ghelli>so big that in practise you usually have
at most 3 levels above.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/586-2
00:35:12.188 --> 00:35:15.503
<v Giorgio Ghelli>Two levels are already quite a lot.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/588-0
00:35:16.423 --> 00:35:18.543
<v Giorgio Ghelli>AA billion bytes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/589-0
00:35:19.823 --> 00:35:20.783
<v Giorgio Ghelli>Three level.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/592-0
00:35:23.023 --> 00:35:28.686
<v Giorgio Ghelli>Uh, it's uh already, Giorgio,
and then if you need there are just one</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/592-1
00:35:28.686 --> 00:35:30.303
<v Giorgio Ghelli>level more, so um...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/597-0
00:35:32.143 --> 00:35:38.633
<v Giorgio Ghelli>These trees tend to be extremely flat,
which is very good.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/597-1
00:35:38.633 --> 00:35:46.113
<v Giorgio Ghelli>Then the equality search is, well,
the equality search is always H,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/597-2
00:35:46.113 --> 00:35:50.623
<v Giorgio Ghelli>because the records are all in the leafs.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/599-0
00:35:50.703 --> 00:35:54.326
<v Giorgio Ghelli>You are never lucky and get a record in
the intermediate level,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/599-1
00:35:54.326 --> 00:35:56.703
<v Giorgio Ghelli>but we've seen that this is not important.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/603-0
00:35:57.663 --> 00:36:04.159
<v Giorgio Ghelli>the probability of getting something in
the intermediate level are so low that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/603-1
00:36:04.159 --> 00:36:09.503
<v Giorgio Ghelli>it's not that important.
What is important is that in this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/608-0
00:36:10.943 --> 00:36:19.911
<v Giorgio Ghelli>Since each of these has 500 children,
250 if you are unlucky,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/608-1
00:36:19.911 --> 00:36:30.903
<v Giorgio Ghelli>then this is just a 0.2% of the size, 0.
4 if we are unlucky, less than 1%.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/610-0
00:36:31.423 --> 00:36:35.722
<v Giorgio Ghelli>So,
it's quite common to have all of this in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/610-1
00:36:35.722 --> 00:36:37.823
<v Giorgio Ghelli>main memory in buffer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/614-0
00:36:38.943 --> 00:36:43.743
<v Giorgio Ghelli>If you have enough buffer,
we will typically have the most commonly</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/614-1
00:36:43.743 --> 00:36:47.696
<v Giorgio Ghelli>used 1% of your commonly used data
structure in buffer,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/614-2
00:36:47.696 --> 00:36:50.943
<v Giorgio Ghelli>and here the most commonly used part is
this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/618-0
00:36:52.223 --> 00:36:56.445
<v Giorgio Ghelli>So, for this reason,
very often when we say,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/618-1
00:36:56.445 --> 00:37:02.074
<v Giorgio Ghelli>what is search for equality with the b +
3, we say it is 1.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/618-2
00:37:02.074 --> 00:37:05.263
<v Giorgio Ghelli>You just need to go through the...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/622-0
00:37:08.223 --> 00:37:14.580
<v Giorgio Ghelli>intermediate infrastructure to the index
part to the sparse index that is in main</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/622-1
00:37:14.580 --> 00:37:18.223
<v Giorgio Ghelli>memory, 0 cost,
and then to read the deadlift.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/626-0
00:37:19.343 --> 00:37:25.450
<v Giorgio Ghelli>So we will very often say the cost is 1.
When we really want to be pessimistic,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/626-1
00:37:25.450 --> 00:37:30.945
<v Giorgio Ghelli>we say h - 1. At least the root,
we assume that it's already in buffer,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/626-2
00:37:30.945 --> 00:37:35.143
<v Giorgio Ghelli>and then we say, okay,
if you are very unlucky, h - 1.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/631-0
00:37:37.423 --> 00:37:40.771
<v Giorgio Ghelli>So,
the cost for equality surgery is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/631-1
00:37:40.771 --> 00:37:45.749
<v Giorgio Ghelli>typically one.
We may say two or three when we want to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/631-2
00:37:45.749 --> 00:37:49.911
<v Giorgio Ghelli>be very, very, very pessimistic.
But frankly,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/631-3
00:37:49.911 --> 00:37:53.983
<v Giorgio Ghelli>already 2 means that some page of this
level</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/633-0
00:37:55.023 --> 00:38:00.348
<v Giorgio Ghelli>Is that, but three, three is and crazy.
The really means that two levels up are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/633-1
00:38:00.348 --> 00:38:02.943
<v Giorgio Ghelli>still on disk, which is very difficult.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/636-0
00:38:07.423 --> 00:38:11.103
<v Giorgio Ghelli>With the same principle,
if you say that the cost for one...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/640-0
00:38:11.983 --> 00:38:17.334
<v Giorgio Ghelli>for equality is 1,
then the cost for a range is just the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/640-1
00:38:17.334 --> 00:38:22.778
<v Giorgio Ghelli>pages in the range.
We assume that with one we get to the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/640-2
00:38:22.778 --> 00:38:26.063
<v Giorgio Ghelli>first page and then we go straight.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/643-0
00:38:28.063 --> 00:38:33.090
<v Giorgio Ghelli>With the usual principle,
because data is sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/643-1
00:38:33.090 --> 00:38:35.503
<v Giorgio Ghelli>then the cost is just...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/648-0
00:38:37.183 --> 00:38:43.176
<v Giorgio Ghelli>the number of leaves of the data
structure multiplied by the selectivity</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/648-1
00:38:43.176 --> 00:38:50.072
<v Giorgio Ghelli>factor. If I want to read 1% of my record,
I just read 1% of the leaves because the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/648-2
00:38:50.072 --> 00:38:55.983
<v Giorgio Ghelli>record are sorted with respect to the key
attribute. Of course, if this</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/651-0
00:38:56.103 --> 00:39:03.697
<v Giorgio Ghelli>Where a condition on any other attribute,
then the cost is a number of records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/651-1
00:39:03.697 --> 00:39:08.063
<v Giorgio Ghelli>but the problem is that if it were any
other.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/656-0
00:39:09.743 --> 00:39:13.618
<v Giorgio Ghelli>attribute,
you do not know how to find the record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/656-1
00:39:13.618 --> 00:39:18.481
<v Giorgio Ghelli>So the only way of getting the record is
by doing a table scan.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/656-2
00:39:18.481 --> 00:39:22.965
<v Giorgio Ghelli>So any equality search or range search on
any other field,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/656-3
00:39:22.965 --> 00:39:28.663
<v Giorgio Ghelli>which is different from the field that
you are using to organise the data,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/658-0
00:39:28.863 --> 00:39:34.103
<v Giorgio Ghelli>It is an page,
the cost of the entire table scanner.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/663-0
00:39:35.103 --> 00:39:38.797
<v Giorgio Ghelli>Now,
please remember that this table scan is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/663-1
00:39:38.797 --> 00:39:44.707
<v Giorgio Ghelli>more expensive than the corresponding
table scan of a heap file or of a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/663-2
00:39:44.707 --> 00:39:49.304
<v Giorgio Ghelli>sequential file,
because in a heap file or a sequential</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/663-3
00:39:49.304 --> 00:39:52.423
<v Giorgio Ghelli>file, the file is smaller, no hoarser.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/665-0
00:39:53.583 --> 00:39:58.543
<v Giorgio Ghelli>Here, the file is bigger; it has also, so.
..</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/670-0
00:40:01.023 --> 00:40:07.450
<v Giorgio Ghelli>This is optimal cost for equality,
optimal cost for range when the attribute</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/670-1
00:40:07.450 --> 00:40:11.456
<v Giorgio Ghelli>is the sort attribute.
For any other attribute,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/670-2
00:40:11.456 --> 00:40:15.462
<v Giorgio Ghelli>equality search and page,
page search and page,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/670-3
00:40:15.462 --> 00:40:18.383
<v Giorgio Ghelli>and this end page must include also</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/674-0
00:40:19.583 --> 00:40:24.121
<v Giorgio Ghelli>It is called usually an if in a structure
like a tree like this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/674-1
00:40:24.121 --> 00:40:29.286
<v Giorgio Ghelli>We use any leaf to indicate the number of
pages of the cliffs. Of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/674-2
00:40:29.286 --> 00:40:33.823
<v Giorgio Ghelli>we need only to read those because they
are connected in a list.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/676-0
00:40:41.423 --> 00:40:41.823
<v Giorgio Ghelli>Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/679-0
00:40:46.703 --> 00:40:50.543
<v Giorgio Ghelli>Deletion is exactly like in the tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/685-0
00:40:51.663 --> 00:40:57.286
<v Giorgio Ghelli>You always delete the in this case of
record up on delete the delete,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/685-1
00:40:57.286 --> 00:41:02.266
<v Giorgio Ghelli>and then if what you are deleting was not
the maximum record,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/685-2
00:41:02.266 --> 00:41:07.567
<v Giorgio Ghelli>nothing changes in the index.
If you what it was deleting was the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/685-3
00:41:07.567 --> 00:41:11.583
<v Giorgio Ghelli>maximum value in that record,
you update the max.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/690-0
00:41:11.703 --> 00:41:15.842
<v Giorgio Ghelli>in the tree,
and if you are merging 2 pages in the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/690-1
00:41:15.842 --> 00:41:19.493
<v Giorgio Ghelli>list because of deletion,
then in this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/690-2
00:41:19.493 --> 00:41:24.848
<v Giorgio Ghelli>you will have to remove one pointer from
your parent in the tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/690-3
00:41:24.848 --> 00:41:29.879
<v Giorgio Ghelli>and then you use the B star, sorry,
the standard B algorithm,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/690-4
00:41:29.879 --> 00:41:31.583
<v Giorgio Ghelli>because the parent is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/692-0
00:41:31.823 --> 00:41:37.743
<v Giorgio Ghelli>A standard B,
so nothing special about deletion.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/694-0
00:41:39.663 --> 00:41:40.303
<v Giorgio Ghelli>Nour.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/695-0
00:41:41.503 --> 00:41:43.583
<v Giorgio Ghelli>I would like to discuss.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/697-0
00:41:44.943 --> 00:41:45.903
<v Giorgio Ghelli>How big?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/702-0
00:41:47.463 --> 00:41:53.022
<v Giorgio Ghelli>is how fully is one of these needs.
We already discussed that a couple of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/702-1
00:41:53.022 --> 00:41:57.905
<v Giorgio Ghelli>days ago when last week,
when we were talking about dynamic cash</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/702-2
00:41:57.905 --> 00:42:03.914
<v Giorgio Ghelli>organization. I told you that when you,
when I was talking about the sequential</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/702-3
00:42:03.914 --> 00:42:06.543
<v Giorgio Ghelli>organization, but the same is true.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/705-0
00:42:06.703 --> 00:42:13.568
<v Giorgio Ghelli>Here, I mean,
if every time one page is too full,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/705-1
00:42:13.568 --> 00:42:16.863
<v Giorgio Ghelli>you split that into two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/711-0
00:42:17.943 --> 00:42:26.969
<v Giorgio Ghelli>Then the average density of a page is 75%,
because at some point it arrives to 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/711-1
00:42:26.969 --> 00:42:33.738
<v Giorgio Ghelli>then it goes back to 50,
and then it grows linearly until 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/711-2
00:42:33.738 --> 00:42:38.143
<v Giorgio Ghelli>then again 50, then again grow until 100.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/713-0
00:42:38.303 --> 00:42:43.598
<v Giorgio Ghelli>So, on average,
it is that the average page is 75%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/713-1
00:42:43.598 --> 00:42:47.263
<v Giorgio Ghelli>which is not something that we like.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/719-0
00:42:48.463 --> 00:42:53.638
<v Giorgio Ghelli>However, here,
it's quite easy to do a merge with a to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/719-1
00:42:53.638 --> 00:43:00.788
<v Giorgio Ghelli>do a rotation or merge as you like with a
nearby page. So when you are 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/719-2
00:43:00.788 --> 00:43:06.716
<v Giorgio Ghelli>instead of splitting,
you rotate with the page next page until</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/719-3
00:43:06.716 --> 00:43:08.503
<v Giorgio Ghelli>also the next page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/722-0
00:43:08.783 --> 00:43:16.143
<v Giorgio Ghelli>Rotation after rotation becomes 100.
Only at that point you merge these two</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/722-1
00:43:16.143 --> 00:43:19.823
<v Giorgio Ghelli>pages and you made 3 pages out of two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/725-0
00:43:22.543 --> 00:43:29.640
<v Giorgio Ghelli>If you do this, whenever you split,
you have 3 pages,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/725-1
00:43:29.640 --> 00:43:33.583
<v Giorgio Ghelli>each of them being 66 percent.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/729-0
00:43:35.583 --> 00:43:42.460
<v Giorgio Ghelli>So the minimum size of a page is not 50,
but is 66. Then from 66,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/729-1
00:43:42.460 --> 00:43:49.023
<v Giorgio Ghelli>it grows up to 100,
and then you cut it back to 66 again, etc.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/731-0
00:43:50.543 --> 00:43:52.063
<v Giorgio Ghelli>So, at this point...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/737-0
00:43:55.023 --> 00:44:00.454
<v Giorgio Ghelli>And the average value,
the average between 66 and 100 is,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/737-1
00:44:00.454 --> 00:44:04.575
<v Giorgio Ghelli>I believe, 83%.
So the average load is 83%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/737-2
00:44:04.575 --> 00:44:08.788
<v Giorgio Ghelli>and that is reasonable,
is not as bad as 75.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/737-3
00:44:08.788 --> 00:44:15.343
<v Giorgio Ghelli>83 is almost reasonable. But still,
even with this trick, it's clear.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/741-0
00:44:15.583 --> 00:44:24.781
<v Giorgio Ghelli>that the B tree, the leaves, sorry,
B tree are much less denser than a heap</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/741-1
00:44:24.781 --> 00:44:29.743
<v Giorgio Ghelli>file or than a static sequential file. So</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/744-0
00:44:31.823 --> 00:44:40.181
<v Giorgio Ghelli>If equality and the range of on one
specific attribute are the dominant cost,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/744-1
00:44:40.181 --> 00:44:43.503
<v Giorgio Ghelli>then it makes sense to have AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/746-0
00:44:44.703 --> 00:44:48.463
<v Giorgio Ghelli>Bigly primary organization, but.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/750-0
00:44:49.423 --> 00:44:56.848
<v Giorgio Ghelli>If you have a lot of equality or range
search also on other attributes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/750-1
00:44:56.848 --> 00:45:02.623
<v Giorgio Ghelli>then this means that you will have a lot
of table scan.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/755-0
00:45:05.103 --> 00:45:09.815
<v Giorgio Ghelli>And then in this case, okay,
you are getting very good result on</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/755-1
00:45:09.815 --> 00:45:14.599
<v Giorgio Ghelli>equality and range, okay,
but quite bad result on the table scan.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/755-2
00:45:14.599 --> 00:45:19.601
<v Giorgio Ghelli>You could have better results on the
table scan if you had a cheaper</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/755-3
00:45:19.601 --> 00:45:20.543
<v Giorgio Ghelli>organization.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/759-0
00:45:22.623 --> 00:45:29.100
<v Giorgio Ghelli>But of course, with the heap organization,
you would have very bad results on</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/759-1
00:45:29.100 --> 00:45:35.743
<v Giorgio Ghelli>equality and interval on the primary most
important key. So what a possibility?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/764-0
00:45:40.303 --> 00:45:45.915
<v Giorgio Ghelli>To solve this problem is using a
secondary organization, that is,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/764-1
00:45:45.915 --> 00:45:52.971
<v Giorgio Ghelli>let us use a heap organisation as primary
organisation so that everything works on</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/764-2
00:45:52.971 --> 00:45:56.797
<v Giorgio Ghelli>any attribute is always as fast as
possible.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/764-3
00:45:56.797 --> 00:46:00.623
<v Giorgio Ghelli>And then let us use a secondary
organisation</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/766-0
00:46:00.943 --> 00:46:06.943
<v Giorgio Ghelli>Additional data structure to make
equality and interval faster.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/772-0
00:46:08.103 --> 00:46:14.585
<v Giorgio Ghelli>Of course, this is a compromise,
as we are going to see in 10 minutes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/772-1
00:46:14.585 --> 00:46:20.793
<v Giorgio Ghelli>If you use a secondary organisation to
have a fast equality search,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/772-2
00:46:20.793 --> 00:46:27.823
<v Giorgio Ghelli>equality search costs two accesses,
one to the index, one to the file. While</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/776-0
00:46:28.223 --> 00:46:34.914
<v Giorgio Ghelli>If you use hash or Venturini as primary
organization,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/776-1
00:46:34.914 --> 00:46:42.223
<v Giorgio Ghelli>then quality access is 1 the cost.
So keep plus secondary.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/777-0
00:46:43.863 --> 00:46:47.663
<v Giorgio Ghelli>is a little bit lower than just the
primary.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/783-0
00:46:48.743 --> 00:46:53.834
<v Giorgio Ghelli>But the problem is that the primary
optimises 1 attribute,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/783-1
00:46:53.834 --> 00:46:59.097
<v Giorgio Ghelli>but makes a table scan slower.
Keep optimises table scanner,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/783-2
00:46:59.097 --> 00:47:04.015
<v Giorgio Ghelli>but of course,
that one attribute will not be as fast as</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/783-3
00:47:04.015 --> 00:47:07.983
<v Giorgio Ghelli>a primary organization.
So you have a choice.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/784-0
00:47:08.623 --> 00:47:09.303
<v Giorgio Ghelli>AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/787-0
00:47:10.303 --> 00:47:16.738
<v Giorgio Ghelli>Now we take 10 minutes break and then we
will discuss secondary organisation in a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/787-1
00:47:16.738 --> 00:47:18.543
<v Giorgio Ghelli>little bit more detail.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/884-0
00:59:56.543 --> 00:59:58.223
<v Giorgio Ghelli>OK, indexes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/888-0
01:00:00.223 --> 01:00:07.263
<v Giorgio Ghelli>We all know what the indexes are from
your first database.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/890-0
01:00:08.703 --> 01:00:09.103
<v Giorgio Ghelli>Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/891-0
01:00:11.823 --> 01:00:14.303
<v Giorgio Ghelli>Yeah, yeah, I hope eventually we will.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/893-0
01:00:16.783 --> 01:00:17.423
<v Giorgio Ghelli>Let's see.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/897-0
01:00:28.783 --> 01:00:29.183
<v Giorgio Ghelli>Ohh.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/898-0
01:00:30.143 --> 01:00:30.383
<v Giorgio Ghelli>Up.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/902-0
01:00:39.903 --> 01:00:41.263
<v Giorgio Ghelli>Oh, boy.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/905-0
01:00:51.343 --> 01:00:52.223
<v Giorgio Ghelli>Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/906-0
01:00:54.223 --> 01:00:54.303
<v Giorgio Ghelli>Uhh...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/907-0
01:00:55.503 --> 01:00:55.903
<v Giorgio Ghelli>So?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/914-0
01:01:01.983 --> 01:01:10.163
<v Giorgio Ghelli>You already know what is an index.
An index is essentially a table with two</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/914-1
01:01:10.163 --> 01:01:15.652
<v Giorgio Ghelli>columns.
One contains all the values of 1 specific</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/914-2
01:01:15.652 --> 01:01:21.463
<v Giorgio Ghelli>attribute from a table and the other one
associates a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/919-0
01:01:21.943 --> 01:01:28.917
<v Giorgio Ghelli>record ID for that value. So for example,
if you have a table like this with the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/919-1
01:01:28.917 --> 01:01:34.858
<v Giorgio Ghelli>student code, the city, birth, year,
an index on the student code is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/919-2
01:01:34.858 --> 01:01:41.143
<v Giorgio Ghelli>essentially a projection of this table on
the student code and on the R.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/925-0
01:01:41.183 --> 01:01:45.355
<v Giorgio Ghelli>ID, the record ID.
So it's a table with two columns.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/925-1
01:01:45.355 --> 01:01:49.921
<v Giorgio Ghelli>The first one contains all the radius for
that attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/925-2
01:01:49.921 --> 01:01:54.643
<v Giorgio Ghelli>The second one for each value,
the corresponding record ID.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/925-3
01:01:54.643 --> 01:01:59.051
<v Giorgio Ghelli>So an index is a data structure.
This is not the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/925-4
01:01:59.051 --> 01:02:03.223
<v Giorgio Ghelli>This 2 is a record ID is not an index.
The index is.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/930-0
01:02:03.343 --> 01:02:08.363
<v Giorgio Ghelli>This, the table is called the index.
This one is called the reference,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/930-1
01:02:08.363 --> 01:02:13.241
<v Giorgio Ghelli>the record ID, but not the index.
That's the confusion that a lot of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/930-2
01:02:13.241 --> 01:02:18.685
<v Giorgio Ghelli>students do. Please don't do that.
So an index is a mapping of the values of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/930-3
01:02:18.685 --> 01:02:22.503
<v Giorgio Ghelli>an attribute to the corresponding reader,
a function.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/934-0
01:02:23.223 --> 01:02:27.942
<v Giorgio Ghelli>Given a value, I give you the reader.
A function, as you know,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/934-1
01:02:27.942 --> 01:02:32.211
<v Giorgio Ghelli>is a set of pairs,
is a subset of the Cartesian product,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/934-2
01:02:32.211 --> 01:02:36.255
<v Giorgio Ghelli>this set of pairs.
So an index on an attribute K of a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/934-3
01:02:36.255 --> 01:02:41.423
<v Giorgio Ghelli>relational table is a set of pairs, K,
read, K, read, K, read a set.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/935-0
01:02:41.503 --> 01:02:42.183
<v Giorgio Ghelli>Affairs.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/940-0
01:02:43.703 --> 01:02:50.808
<v Giorgio Ghelli>Every line,
every entry in the index is a pair KIRI,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/940-1
01:02:50.808 --> 01:02:58.583
<v Giorgio Ghelli>where K is the value of the attribute K
in the record RI.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/941-0
01:02:59.663 --> 01:03:02.597
<v Giorgio Ghelli>So,
it's a say of pairs value of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/941-1
01:03:02.597 --> 01:03:04.183
<v Giorgio Ghelli>attribute record ID.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/943-0
01:03:05.223 --> 01:03:05.703
<v Giorgio Ghelli>That's it.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/948-0
01:03:07.223 --> 01:03:11.623
<v Giorgio Ghelli>And of course,
you can build how many indexes on a table</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/948-1
01:03:11.623 --> 01:03:17.798
<v Giorgio Ghelli>as you like. Secondary organizations,
indices are like that. You may have zero,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/948-2
01:03:17.798 --> 01:03:22.275
<v Giorgio Ghelli>one, two, three.
If on this table you have two attributes</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/948-3
01:03:22.275 --> 01:03:26.983
<v Giorgio Ghelli>that are often used in searches,
equality or range searches,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/953-0
01:03:27.143 --> 01:03:31.467
<v Giorgio Ghelli>You will have two indexes,
one on the student code,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/953-1
01:03:31.467 --> 01:03:37.120
<v Giorgio Ghelli>which makes searches of student code
faster, one on the birth year,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/953-2
01:03:37.120 --> 01:03:41.028
<v Giorgio Ghelli>which makes searches on the birth year
faster.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/953-3
01:03:41.028 --> 01:03:47.263
<v Giorgio Ghelli>You can do an index either on a unique
key or on an attribute that is not.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/958-0
01:03:47.543 --> 01:03:52.344
<v Giorgio Ghelli>unique. This makes no difference. Here,
this is a unique,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/958-1
01:03:52.344 --> 01:03:57.807
<v Giorgio Ghelli>so every value only appears one in the
index. This is non-unique,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/958-2
01:03:57.807 --> 01:04:01.532
<v Giorgio Ghelli>so a value may appear many times.
Of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/958-3
01:04:01.532 --> 01:04:06.663
<v Giorgio Ghelli>we will typically represent this index
this way, just 172.45.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/963-0
01:04:06.783 --> 01:04:15.051
<v Giorgio Ghelli>When I will not arrive to the same value
many times, of course. But in principle,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/963-1
01:04:15.051 --> 01:04:22.310
<v Giorgio Ghelli>if you say that the index is a
representation of the projection of this</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/963-2
01:04:22.310 --> 01:04:26.343
<v Giorgio Ghelli>table on both ER and IV, then of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/967-0
01:04:26.783 --> 01:04:31.487
<v Giorgio Ghelli>History that you will not,
you will use a trick that we will</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/967-1
01:04:31.487 --> 01:04:36.345
<v Giorgio Ghelli>describe very soon, so that every value,
every distinct value,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/967-2
01:04:36.345 --> 01:04:40.663
<v Giorgio Ghelli>only appears exactly once in the index.
We usually say.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/969-0
01:04:46.343 --> 01:04:52.423
<v Giorgio Ghelli>That an index is an ordered table,
and in this, indeed.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/972-0
01:04:55.223 --> 01:04:58.663
<v Giorgio Ghelli>In this picture,
I represented it as sorted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/976-0
01:04:59.703 --> 01:05:04.810
<v Giorgio Ghelli>has sorted. This is not precise.
To be precise,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/976-1
01:05:04.810 --> 01:05:13.215
<v Giorgio Ghelli>an index is a fast data structure that
stores all this pair in such a way that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/976-2
01:05:13.215 --> 01:05:15.343
<v Giorgio Ghelli>given a value of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/980-0
01:05:16.663 --> 01:05:21.561
<v Giorgio Ghelli>Attribute,
you can find the only RID associated with</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/980-1
01:05:21.561 --> 01:05:27.383
<v Giorgio Ghelli>that value over the set of all RID
associated with this value.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/985-0
01:05:30.903 --> 01:05:37.025
<v Giorgio Ghelli>Since an index is essentially a set of
pairs, of course, in principle, you can,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/985-1
01:05:37.025 --> 01:05:42.688
<v Giorgio Ghelli>you have to choose how to organise it:
heap, sequential, hash, or betray.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/985-2
01:05:42.688 --> 01:05:46.590
<v Giorgio Ghelli>Since an index is only used to make
search faster,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/985-3
01:05:46.590 --> 01:05:50.263
<v Giorgio Ghelli>you will never use neither heap nor
sequential.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/986-0
01:05:50.423 --> 01:05:52.743
<v Giorgio Ghelli>Either fashion or victory.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/989-0
01:05:54.023 --> 01:06:01.830
<v Giorgio Ghelli>The index is always organised itself,
either as a hash table or as a B plus</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/989-1
01:06:01.830 --> 01:06:02.343
<v Giorgio Ghelli>tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/991-0
01:06:03.223 --> 01:06:07.063
<v Giorgio Ghelli>Which one would you choose? Well, if...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/993-0
01:06:09.463 --> 01:06:12.503
<v Giorgio Ghelli>You ever consider the possibility of the..
.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/997-0
01:06:15.023 --> 01:06:20.476
<v Giorgio Ghelli>Doing a range search,
or if your data is dynamic,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/997-1
01:06:20.476 --> 01:06:25.383
<v Giorgio Ghelli>then you will use the B plus table index
if.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/999-0
01:06:27.543 --> 01:06:33.263
<v Giorgio Ghelli>You are sure that you will never ever
need a range searcher?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1002-0
01:06:34.663 --> 01:06:39.897
<v Giorgio Ghelli>And you are sure that your data is very,
very static,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1002-1
01:06:39.897 --> 01:06:44.743
<v Giorgio Ghelli>then you will organise the index as a
hash table.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1008-0
01:06:46.023 --> 01:06:52.177
<v Giorgio Ghelli>There are some kind of data we are a
range search really makes no sense.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1008-1
01:06:52.177 --> 01:06:56.981
<v Giorgio Ghelli>In the fiscal code,
nobody does a range search on fiscal</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1008-2
01:06:56.981 --> 01:07:03.556
<v Giorgio Ghelli>codes and a lot of the primary IDs are
never ever looked for by range because</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1008-3
01:07:03.556 --> 01:07:05.663
<v Giorgio Ghelli>the range makes no sense.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1013-0
01:07:05.863 --> 01:07:11.994
<v Giorgio Ghelli>semantic sense. For example, data,
data very often looks searched by range.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1013-1
01:07:11.994 --> 01:07:18.043
<v Giorgio Ghelli>It has a lot of sense to install
everything that happened in this range of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1013-2
01:07:18.043 --> 01:07:23.205
<v Giorgio Ghelli>data. Pisano code, no.
So it may be the case that you know that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1013-3
01:07:23.205 --> 01:07:25.383
<v Giorgio Ghelli>you don't care at all about</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1017-0
01:07:25.543 --> 01:07:30.902
<v Giorgio Ghelli>Range search, and your data is very,
very static. In this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1017-1
01:07:30.902 --> 01:07:36.513
<v Giorgio Ghelli>you may decide to organise the index as a
hash table. In practice,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1017-2
01:07:36.513 --> 01:07:40.783
<v Giorgio Ghelli>this happens very rarely. In practice,
by default.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1021-0
01:07:42.023 --> 01:07:51.042
<v Giorgio Ghelli>people always organise these indexes as b
+ 3. Because at the end of the day,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1021-1
01:07:51.042 --> 01:07:56.823
<v Giorgio Ghelli>the index is much smaller than the table.
So they</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1026-0
01:07:59.623 --> 01:08:06.665
<v Giorgio Ghelli>sparse index part of the index is so
small that it typically fits main memory.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1026-1
01:08:06.665 --> 01:08:13.439
<v Giorgio Ghelli>If the sparse index part of the index is
so small that it fits main memory,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1026-2
01:08:13.439 --> 01:08:19.143
<v Giorgio Ghelli>then even a quality search for the B plus
E3 is as efficient as</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1027-0
01:08:19.303 --> 01:08:19.783
<v Giorgio Ghelli>Hash.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1029-0
01:08:20.823 --> 01:08:23.657
<v Giorgio Ghelli>At this point,
you really have no reason to go for the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1029-1
01:08:23.657 --> 01:08:24.223
<v Giorgio Ghelli>hash table.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1033-0
01:08:25.263 --> 01:08:30.454
<v Giorgio Ghelli>So for this reason,
typically people just use this B plus</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1033-1
01:08:30.454 --> 01:08:37.076
<v Giorgio Ghelli>trees for indices. From now on,
we will always assume that every index is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1033-2
01:08:37.076 --> 01:08:39.223
<v Giorgio Ghelli>stored as a B plus tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1035-0
01:08:40.383 --> 01:08:45.916
<v Giorgio Ghelli>But please remember that, in theory,
you may also store them,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1035-1
01:08:45.916 --> 01:08:48.503
<v Giorgio Ghelli>organise them as hash tables.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1038-0
01:08:49.663 --> 01:08:53.363
<v Giorgio Ghelli>So, you see,
we always draw them as sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1038-1
01:08:53.363 --> 01:08:57.063
<v Giorgio Ghelli>because if it is a hash,
then it is sorted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1040-0
01:08:59.703 --> 01:09:01.143
<v Giorgio Ghelli>Now, index is.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1041-0
01:09:03.343 --> 01:09:04.103
<v Giorgio Ghelli>Can be.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1047-0
01:09:05.543 --> 01:09:12.858
<v Giorgio Ghelli>divided into clustered and unclustered,
which is very similar to what the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1047-1
01:09:12.858 --> 01:09:20.469
<v Giorgio Ghelli>distinction between the dense and
non-dense trees that we have seen already,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1047-2
01:09:20.469 --> 01:09:26.103
<v Giorgio Ghelli>but there is a small difference.
We say that an index is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1049-0
01:09:26.223 --> 01:09:30.823
<v Giorgio Ghelli>Clustered the when the data.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1054-0
01:09:32.263 --> 01:09:40.864
<v Giorgio Ghelli>that are referred by the index are sorted
according to the attribute of the index</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1054-1
01:09:40.864 --> 01:09:48.626
<v Giorgio Ghelli>or are almost sorted according to the
index, according to that attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1054-2
01:09:48.626 --> 01:09:51.143
<v Giorgio Ghelli>We say that the index is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1056-0
01:09:51.263 --> 01:09:57.383
<v Giorgio Ghelli>Unclustered, otherwise,
when the data is not now.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1058-0
01:09:58.903 --> 01:10:01.143
<v Giorgio Ghelli>Indexes are usually untrusted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1060-0
01:10:02.823 --> 01:10:08.983
<v Giorgio Ghelli>The reason we have indexes is exactly
because we do not want to solve the data.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1064-0
01:10:09.943 --> 01:10:17.281
<v Giorgio Ghelli>We want to keep the data in a key file,
or we want to sort the data according to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1064-1
01:10:17.281 --> 01:10:22.263
<v Giorgio Ghelli>family name,
and then we want to have an index on age.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1066-0
01:10:23.063 --> 01:10:27.587
<v Giorgio Ghelli>So, usually,
the very real reason why you have an</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1066-1
01:10:27.587 --> 01:10:30.663
<v Giorgio Ghelli>index is because that is not soft.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1072-0
01:10:33.383 --> 01:10:39.038
<v Giorgio Ghelli>If the data was completely sorted,
if you wanted to keep the data completely</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1072-1
01:10:39.038 --> 01:10:42.710
<v Giorgio Ghelli>sorted,
then rather than a generic cluster index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1072-2
01:10:42.710 --> 01:10:48.585
<v Giorgio Ghelli>you would probably use a B plus tree.
At this point, since your data is sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1072-3
01:10:48.585 --> 01:10:52.183
<v Giorgio Ghelli>if you use a B plus tree,
you have the advantage</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1075-0
01:10:52.423 --> 01:10:56.894
<v Giorgio Ghelli>that you only have,
that you can use here a sparse index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1075-1
01:10:56.894 --> 01:11:01.903
<v Giorgio Ghelli>only one pointer per page,
not many pointers per page like here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1081-0
01:11:03.103 --> 01:11:08.442
<v Giorgio Ghelli>So from now on,
we will always assume that the index are</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1081-1
01:11:08.442 --> 01:11:13.406
<v Giorgio Ghelli>unclustered. The data is organized,
sorted in a way,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1081-2
01:11:13.406 --> 01:11:18.276
<v Giorgio Ghelli>and the index is sorted in a totally
different way,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1081-3
01:11:18.276 --> 01:11:22.303
<v Giorgio Ghelli>which are situations where you really
have</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1084-0
01:11:22.543 --> 01:11:32.042
<v Giorgio Ghelli>clustered indexes. Well, for example,
if your data is stored as a sequential</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1084-1
01:11:32.042 --> 01:11:35.743
<v Giorgio Ghelli>file plus a differential file,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1086-0
01:11:37.263 --> 01:11:38.383
<v Giorgio Ghelli>In this case.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1089-0
01:11:39.543 --> 01:11:44.508
<v Giorgio Ghelli>you will have all this data sequential,
so sorted. And then at the end,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1089-1
01:11:44.508 --> 01:11:49.128
<v Giorgio Ghelli>you put the differential file,
which is not sorted. By definition,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1089-2
01:11:49.128 --> 01:11:50.783
<v Giorgio Ghelli>this index is clustered.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1094-0
01:11:51.743 --> 01:11:56.882
<v Giorgio Ghelli>because most of the data here follow the
same order as the index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1094-1
01:11:56.882 --> 01:12:02.099
<v Giorgio Ghelli>even if not all of them.
And this organisation is interesting in a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1094-2
01:12:02.099 --> 01:12:08.094
<v Giorgio Ghelli>sense, because with respect to b + 3,
this organisation does not have holes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1094-3
01:12:08.094 --> 01:12:10.663
<v Giorgio Ghelli>while a b + 3 has a lot of holes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1099-0
01:12:11.583 --> 01:12:19.923
<v Giorgio Ghelli>So that is probably the only case I know
where people really use clustered indexes</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1099-1
01:12:19.923 --> 01:12:27.057
<v Giorgio Ghelli>that are dense like this one,
other cluster index that are sparse like</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1099-2
01:12:27.057 --> 01:12:28.463
<v Giorgio Ghelli>a B plus tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1100-0
01:12:32.223 --> 01:12:32.623
<v Giorgio Ghelli>Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1105-0
01:12:35.903 --> 01:12:43.780
<v Giorgio Ghelli>The distinction between clustered and
unclustered is very important when you</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1105-1
01:12:43.780 --> 01:12:49.303
<v Giorgio Ghelli>compute the cost of solving a query using
an indexer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1108-0
01:12:51.103 --> 01:12:56.029
<v Giorgio Ghelli>The cost of solving a query using an
index is usually divided into two</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1108-1
01:12:56.029 --> 01:12:59.705
<v Giorgio Ghelli>components,
cost of accessing the index plus cost of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1108-2
01:12:59.705 --> 01:13:01.023
<v Giorgio Ghelli>accessing the data.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1113-0
01:13:04.623 --> 01:13:09.543
<v Giorgio Ghelli>In quality search,
the cost of accessing the index is 1,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1113-1
01:13:09.543 --> 01:13:14.980
<v Giorgio Ghelli>because of the index,
we assume that all the sparse index part</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1113-2
01:13:14.980 --> 01:13:21.280
<v Giorgio Ghelli>of the index is in main memory,
so you only need to access the leaves of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1113-3
01:13:21.280 --> 01:13:22.143
<v Giorgio Ghelli>the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1119-0
01:13:24.143 --> 01:13:29.461
<v Giorgio Ghelli>So one leaf from the index,
in this leaf you find the rate of your</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1119-1
01:13:29.461 --> 01:13:33.270
<v Giorgio Ghelli>record,
and then you go straight to the page of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1119-2
01:13:33.270 --> 01:13:37.952
<v Giorgio Ghelli>the record, 1 + 1.
This is the difference between equality</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1119-3
01:13:37.952 --> 01:13:44.063
<v Giorgio Ghelli>when your data has a primary hash or b +
3 organization, then equality is 1.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1120-0
01:13:44.463 --> 01:13:48.703
<v Giorgio Ghelli>If it is secondary, two,
one for the index plus one for the data.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1123-0
01:13:50.303 --> 01:13:55.827
<v Giorgio Ghelli>And that's the reason why people use this
pretty much always heap organisation plus</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1123-1
01:13:55.827 --> 01:13:58.063
<v Giorgio Ghelli>index, because two is good enough.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1127-0
01:14:00.143 --> 01:14:05.403
<v Giorgio Ghelli>So, you just do a heap optimal table scan.
Table scan is very important,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1127-1
01:14:05.403 --> 01:14:09.149
<v Giorgio Ghelli>and you want to optimise access,
just use an index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1127-2
01:14:09.149 --> 01:14:12.463
<v Giorgio Ghelli>because it will be two instead of 1.
Why not?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1130-0
01:14:14.223 --> 01:14:20.487
<v Giorgio Ghelli>Range search.
So the predicate is all values of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1130-1
01:14:20.487 --> 01:14:24.703
<v Giorgio Ghelli>index attributed between 10 and 20.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1135-0
01:14:28.383 --> 01:14:33.201
<v Giorgio Ghelli>This is a range search over, of course,
the attribute of the index. Otherwise,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1135-1
01:14:33.201 --> 01:14:36.494
<v Giorgio Ghelli>if it is another attribute,
you do not use the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1135-2
01:14:36.494 --> 01:14:40.702
<v Giorgio Ghelli>You just do a table scan or use a
different index. So with an index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1135-3
01:14:40.702 --> 01:14:43.263
<v Giorgio Ghelli>this is always the attribute of the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1139-0
01:14:44.863 --> 01:14:51.021
<v Giorgio Ghelli>Okay, here, as usual, we say, okay,
the selectivity factor of this condition,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1139-1
01:14:51.021 --> 01:14:56.863
<v Giorgio Ghelli>you can evaluate like size of the range
divided by size of the attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1141-0
01:14:58.463 --> 01:15:03.263
<v Giorgio Ghelli>by delta between max and mean of the
attribute. At this point, if...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1146-0
01:15:04.783 --> 01:15:09.316
<v Giorgio Ghelli>The index is clustered,
then the cost is very cheap.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1146-1
01:15:09.316 --> 01:15:15.645
<v Giorgio Ghelli>If you want to read the 1% of the records,
you read the 1% of the leaves.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1146-2
01:15:15.645 --> 01:15:22.059
<v Giorgio Ghelli>But then in this 1% of the leaves,
you find the pointer to 1% of the pages</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1146-3
01:15:22.059 --> 01:15:25.223
<v Giorgio Ghelli>because the data is sorted or almost.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1149-0
01:15:25.663 --> 01:15:31.497
<v Giorgio Ghelli>So unless you are unlucky,
you find the data sorted on the index and</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1149-1
01:15:31.497 --> 01:15:33.103
<v Giorgio Ghelli>sorted on the data.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1152-0
01:15:34.183 --> 01:15:39.081
<v Giorgio Ghelli>Unfortunately,
this clustered case is very, very rare.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1152-1
01:15:39.081 --> 01:15:46.383
<v Giorgio Ghelli>The common case is this one, unclustered.
In the unclustered case, as I told you,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1155-0
01:15:47.983 --> 01:15:53.503
<v Giorgio Ghelli>many times now.
Can you read the last line here? Okay.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1156-0
01:15:55.863 --> 01:15:58.463
<v Giorgio Ghelli>In the unclassed case, OK.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1162-0
01:15:59.663 --> 01:16:06.266
<v Giorgio Ghelli>In the safety factor, sorry, in the index,
1% of the records is 1% of the differ,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1162-1
01:16:06.266 --> 01:16:11.741
<v Giorgio Ghelli>because the index is sorted on key.
But unfortunately, in the data,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1162-2
01:16:11.741 --> 01:16:18.343
<v Giorgio Ghelli>if you need to read the 1% of the records,
the number of disc access that you do,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1163-0
01:16:18.783 --> 01:16:21.543
<v Giorgio Ghelli>Is this one which is a possible?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1168-0
01:16:23.023 --> 01:16:28.935
<v Giorgio Ghelli>If you have 100 record pages,
this is 100 bigger than that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1168-1
01:16:28.935 --> 01:16:35.142
<v Giorgio Ghelli>You have to find 1000 records.
Here we just read the 10 pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1168-2
01:16:35.142 --> 01:16:41.743
<v Giorgio Ghelli>Here you must read 1000 records.
Here are just 10 pages. Here one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1171-0
01:16:41.863 --> 01:16:46.116
<v Giorgio Ghelli>1000 pages, one page for each read. Why?
Well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1171-1
01:16:46.116 --> 01:16:51.183
<v Giorgio Ghelli>because of the records are scattered all
over the file.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1176-0
01:16:54.063 --> 01:16:59.086
<v Giorgio Ghelli>So this is the reason why you should use
a cluster of the files in principle.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1176-1
01:16:59.086 --> 01:17:02.756
<v Giorgio Ghelli>But of course,
I already explained to you that people do</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1176-2
01:17:02.756 --> 01:17:05.911
<v Giorgio Ghelli>not do this. In any case,
even when you do this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1176-3
01:17:05.911 --> 01:17:10.418
<v Giorgio Ghelli>you can do that only on one index.
If you have two different indexes,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1176-4
01:17:10.418 --> 01:17:12.543
<v Giorgio Ghelli>either you have clustered on one,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1178-0
01:17:12.783 --> 01:17:15.103
<v Giorgio Ghelli>Or your cluster on the other one, so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1179-0
01:17:17.663 --> 01:17:18.303
<v Giorgio Ghelli>So.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1182-0
01:17:21.103 --> 01:17:25.663
<v Giorgio Ghelli>Reading a range of record using an
indexer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1185-0
01:17:28.623 --> 01:17:32.346
<v Giorgio Ghelli>At the cost, which,
when the range is very small,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1185-1
01:17:32.346 --> 01:17:38.303
<v Giorgio Ghelli>if in that range you only have three
records, then OK, you have a very, very...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1191-0
01:17:39.823 --> 01:17:46.265
<v Giorgio Ghelli>Focus range is almost like,
but generally speaking,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1191-1
01:17:46.265 --> 01:17:51.840
<v Giorgio Ghelli>if the range is a little bit bigger than
1%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1191-2
01:17:51.840 --> 01:18:01.503
<v Giorgio Ghelli>this one may be lower than a table scan.
OK, if you have 100 record per page,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1193-0
01:18:02.863 --> 01:18:07.663
<v Giorgio Ghelli>Then, 1% of NREC is exactly and page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1195-0
01:18:09.663 --> 01:18:15.263
<v Giorgio Ghelli>So, 2% of an is 2 times the data,
and hence the table scan is better.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1200-0
01:18:16.703 --> 01:18:20.947
<v Giorgio Ghelli>So,
you use indexes for a range search only</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1200-1
01:18:20.947 --> 01:18:28.277
<v Giorgio Ghelli>when the selectivity factor is very,
very low. We say it is very selective.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1200-2
01:18:28.277 --> 01:18:35.607
<v Giorgio Ghelli>It has a factor very low, below 1%,
then okay. But if you have a condition,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1200-3
01:18:35.607 --> 01:18:35.993
<v Giorgio Ghelli>10%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1202-0
01:18:36.143 --> 01:18:39.183
<v Giorgio Ghelli>Forget the, just to do,
I do the whole table stand.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1205-0
01:18:42.183 --> 01:18:47.022
<v Giorgio Ghelli>Indexes for equality, of course,
you will use indexes for equality.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1205-1
01:18:47.022 --> 01:18:48.303
<v Giorgio Ghelli>Indexes for range.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1207-0
01:18:50.063 --> 01:18:55.663
<v Giorgio Ghelli>Like I see, very fine, very small, yes,
big range, nope.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1209-0
01:18:56.703 --> 01:18:59.103
<v Giorgio Ghelli>No sense using the index, so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1214-0
01:19:00.023 --> 01:19:05.267
<v Giorgio Ghelli>We have seen what is a B tree fully
balanced search tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1214-1
01:19:05.267 --> 01:19:11.415
<v Giorgio Ghelli>then we have seen the B + 3,
which is a little bit more complicated</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1214-2
01:19:11.415 --> 01:19:19.010
<v Giorgio Ghelli>because it is in a sense a combination of
a dynamic sequential file plus a sparse B</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1214-3
01:19:19.010 --> 01:19:19.823
<v Giorgio Ghelli>tree that</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1219-0
01:19:19.983 --> 01:19:22.970
<v Giorgio Ghelli>only contains the key,
so it has two parts,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1219-1
01:19:22.970 --> 01:19:27.245
<v Giorgio Ghelli>the files below the key.
But this is very important because in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1219-2
01:19:27.245 --> 01:19:32.675
<v Giorgio Ghelli>this way you can have the index factor,
so to say, the start index factor very,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1219-3
01:19:32.675 --> 01:19:36.068
<v Giorgio Ghelli>very flat because by putting there only
the keys,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1219-4
01:19:36.068 --> 01:19:38.783
<v Giorgio Ghelli>you have the fan out which is very good.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1224-0
01:19:39.023 --> 01:19:45.655
<v Giorgio Ghelli>and that makes that very flat.
By being so flat, at the end of the day,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1224-1
01:19:45.655 --> 01:19:51.827
<v Giorgio Ghelli>the cost is very similar to hash
organisation for equality search.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1224-2
01:19:51.827 --> 01:19:55.879
<v Giorgio Ghelli>But it is almost as good as hash,
but much,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1224-3
01:19:55.879 --> 01:19:59.103
<v Giorgio Ghelli>much better than hash organization.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1229-0
01:19:59.423 --> 01:20:05.579
<v Giorgio Ghelli>as far as the intervals are concerned.
Notice that for the B-tree,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1229-1
01:20:05.579 --> 01:20:13.297
<v Giorgio Ghelli>I have no problem with the data interval.
I can use it for the B-tree also when the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1229-2
01:20:13.297 --> 01:20:17.983
<v Giorgio Ghelli>safety factor is at 50% because the data
is solid.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1230-0
01:20:19.343 --> 01:20:22.623
<v Giorgio Ghelli>Same here, sorry for the cluster index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1234-0
01:20:24.543 --> 01:20:29.432
<v Giorgio Ghelli>With a cluster index,
that's better than table scan or any with</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1234-1
01:20:29.432 --> 01:20:32.793
<v Giorgio Ghelli>a 50%,
it's a 50% of a table scan when it's</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1234-2
01:20:32.793 --> 01:20:36.841
<v Giorgio Ghelli>clustered.
So the B-tree is very good for intervals.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1234-3
01:20:36.841 --> 01:20:38.063
<v Giorgio Ghelli>It is the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1240-0
01:20:39.263 --> 01:20:45.142
<v Giorgio Ghelli>unclustered index that is a little bit
mad with each of us, not that good,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1240-1
01:20:45.142 --> 01:20:50.472
<v Giorgio Ghelli>because here we do not have the sorting
of the data in the victory.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1240-2
01:20:50.472 --> 01:20:56.351
<v Giorgio Ghelli>If you use the victory as a prime
organization, then every interval is OK.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1240-3
01:20:56.351 --> 01:21:00.583
<v Giorgio Ghelli>If you use that as a secondary
organization, then no.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1243-0
01:21:01.063 --> 01:21:07.406
<v Giorgio Ghelli>only the database that are very,
very selected are worth using the index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1243-1
01:21:07.406 --> 01:21:10.663
<v Giorgio Ghelli>So do not confuse indexes with B-tree.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1248-0
01:21:11.623 --> 01:21:18.089
<v Giorgio Ghelli>Or, if you like, to be more precise,
do not confuse the indexes as a primary</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1248-1
01:21:18.089 --> 01:21:24.386
<v Giorgio Ghelli>organisation with indexes as B3 as
primary organisation with B3 used for a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1248-2
01:21:24.386 --> 01:21:29.676
<v Giorgio Ghelli>secondary organization,
because in the first case your data is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1248-3
01:21:29.676 --> 01:21:30.263
<v Giorgio Ghelli>sorted.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1249-0
01:21:30.503 --> 01:21:35.212
<v Giorgio Ghelli>In the second case,
they typically not sorted unclustered</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1249-1
01:21:35.212 --> 01:21:36.023
<v Giorgio Ghelli>typically.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1254-0
01:21:37.463 --> 01:21:41.088
<v Giorgio Ghelli>Then we are introduced to the notion of
index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1254-1
01:21:41.088 --> 01:21:46.023
<v Giorgio Ghelli>Index is a secondary organisation used to
make searches faster.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1257-0
01:21:47.383 --> 01:21:52.456
<v Giorgio Ghelli>And finally,
we have distinguished between clustered</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1257-1
01:21:52.456 --> 01:21:58.581
<v Giorgio Ghelli>and unclustered indexes,
a distinction that we are going to see</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1257-2
01:21:58.581 --> 01:22:00.303
<v Giorgio Ghelli>again in a moment.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1258-0
01:22:01.263 --> 01:22:01.543
<v Giorgio Ghelli>So.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1266-0
01:22:13.463 --> 01:22:21.124
<v Giorgio Ghelli>We are going now to study a little bit
deeper what happens when you build an</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1266-1
01:22:21.124 --> 01:22:25.303
<v Giorgio Ghelli>index on an attribute which is not unique.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1268-0
01:22:28.583 --> 01:22:29.943
<v Giorgio Ghelli>Baby, we.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1272-0
01:22:33.463 --> 01:22:40.959
<v Giorgio Ghelli>This is very, very confusing.
There is a very confusing terminology in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1272-1
01:22:40.959 --> 01:22:43.703
<v Giorgio Ghelli>the field of algorithm for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1277-0
01:22:46.583 --> 01:22:52.565
<v Giorgio Ghelli>implementing databases. In this field,
when they say primary key,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1277-1
01:22:52.565 --> 01:22:59.724
<v Giorgio Ghelli>they just mean any attribute which is
unique. And when they say secondary key,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1277-2
01:22:59.724 --> 01:23:03.983
<v Giorgio Ghelli>they mean every attribute which is not
unique.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1282-0
01:23:04.263 --> 01:23:10.017
<v Giorgio Ghelli>So the terminology,
the specific terminology that people use</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1282-1
01:23:10.017 --> 01:23:17.092
<v Giorgio Ghelli>in this field uses the name key,
not as the synonym for unique constraint,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1282-2
01:23:17.092 --> 01:23:23.223
<v Giorgio Ghelli>but as a synonym for an attribute of
which you do many searches.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1286-0
01:23:23.943 --> 01:23:30.658
<v Giorgio Ghelli>So being a key means being an important
attribute, not being a unique attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1286-1
01:23:30.658 --> 01:23:37.372
<v Giorgio Ghelli>And then they use the term primary key,
not as in the database where the primary</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1286-2
01:23:37.372 --> 01:23:42.263
<v Giorgio Ghelli>key is the only unique attribute that you
use as a target.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1291-0
01:23:42.423 --> 01:23:47.878
<v Giorgio Ghelli>for a foreign key. So in databases,
primary means target for foreign key.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1291-1
01:23:47.878 --> 01:23:51.710
<v Giorgio Ghelli>Here in this literature,
when they say primary key,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1291-2
01:23:51.710 --> 01:23:55.912
<v Giorgio Ghelli>they just mean that it is unique.
So in this literature,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1291-3
01:23:55.912 --> 01:24:02.103
<v Giorgio Ghelli>you may have two different primary keys.
Student ID is primary because it's unique.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1293-0
01:24:02.583 --> 01:24:07.223
<v Giorgio Ghelli>And, uh, uh, if you start code is fine,
because it's...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1295-0
01:24:08.103 --> 01:24:13.543
<v Giorgio Ghelli>And then they have this secondary key
that means nothing at all.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1299-0
01:24:14.903 --> 01:24:19.543
<v Giorgio Ghelli>in the standard terminology.
In the standard terminology,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1299-1
01:24:19.543 --> 01:24:24.023
<v Giorgio Ghelli>key is unique.
So you cannot be a key and not be unique</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1299-2
01:24:24.023 --> 01:24:25.783
<v Giorgio Ghelli>at the same time. Now,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1304-0
01:24:28.423 --> 01:24:32.523
<v Giorgio Ghelli>Unfortunately,
this is standard terminology,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1304-1
01:24:32.523 --> 01:24:38.901
<v Giorgio Ghelli>so sometimes I will use it.
I will try and avoid using primary key in</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1304-2
01:24:38.901 --> 01:24:43.548
<v Giorgio Ghelli>this form,
so we rather use a unique key or unique</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1304-3
01:24:43.548 --> 01:24:48.103
<v Giorgio Ghelli>attribute to mean an attribute that can
identify.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1309-0
01:24:50.263 --> 01:24:57.479
<v Giorgio Ghelli>And I will, but when I say secondary key,
you will understand because secondary key</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1309-1
01:24:57.479 --> 01:25:01.774
<v Giorgio Ghelli>just means an attribute which is not that
unique.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1309-2
01:25:01.774 --> 01:25:07.701
<v Giorgio Ghelli>So here I have an index on a unique
attribute and here an index on a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1309-3
01:25:07.701 --> 01:25:08.903
<v Giorgio Ghelli>secondary key.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1313-0
01:25:11.863 --> 01:25:17.999
<v Giorgio Ghelli>Index on secondary keys are usually
stored using this technique,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1313-1
01:25:17.999 --> 01:25:21.303
<v Giorgio Ghelli>which is called the inverted index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1315-0
01:25:27.463 --> 01:25:30.583
<v Giorgio Ghelli>Invert or inverted lists, actually.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1318-0
01:25:35.303 --> 01:25:37.623
<v Giorgio Ghelli>It's called inverted because...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1324-0
01:25:42.423 --> 01:25:47.921
<v Giorgio Ghelli>In a database,
you give me a record ID and I give you</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1324-1
01:25:47.921 --> 01:25:53.012
<v Giorgio Ghelli>the value of the city.
That's a normal direction.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1324-2
01:25:53.012 --> 01:26:01.056
<v Giorgio Ghelli>Here I go backward direction from the
city to the list of RIDs. In this sense,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1324-3
01:26:01.056 --> 01:26:03.703
<v Giorgio Ghelli>it is inverted. Of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1329-0
01:26:04.423 --> 01:26:10.293
<v Giorgio Ghelli>It is funny that we use this term only
for the attributes on secondary keys,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1329-1
01:26:10.293 --> 01:26:14.409
<v Giorgio Ghelli>because of course,
also the attributes on the unique,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1329-2
01:26:14.409 --> 01:26:18.602
<v Giorgio Ghelli>the index, sorry,
on the unique attributes compute the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1329-3
01:26:18.602 --> 01:26:23.023
<v Giorgio Ghelli>inverse function,
so they are inverted as well. Whatever.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1331-0
01:26:23.143 --> 01:26:29.409
<v Giorgio Ghelli>The term inverted list refers to this
data structure here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1331-1
01:26:29.409 --> 01:26:32.063
<v Giorgio Ghelli>A data structure where...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1333-0
01:26:35.783 --> 01:26:37.303
<v Giorgio Ghelli>Very simple idea.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1339-0
01:26:38.423 --> 01:26:44.984
<v Giorgio Ghelli>Instead of writing this, that, this, that,
you just write that this and that means</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1339-1
01:26:44.984 --> 01:26:50.201
<v Giorgio Ghelli>this and that, this and this.
This is called the inverted list or</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1339-2
01:26:50.201 --> 01:26:54.311
<v Giorgio Ghelli>inverted index. So, essentially,
an inverted index,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1339-3
01:26:54.311 --> 01:26:58.263
<v Giorgio Ghelli>you may imagine a data structure built
like this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1343-0
01:26:58.503 --> 01:27:03.184
<v Giorgio Ghelli>Florence, list of length one,
and this is the list. Milan,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1343-1
01:27:03.184 --> 01:27:07.547
<v Giorgio Ghelli>list of length two,
this is the list of links. Pisano,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1343-2
01:27:07.547 --> 01:27:11.514
<v Giorgio Ghelli>list of length three,
and this is the list. Here,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1343-3
01:27:11.514 --> 01:27:17.463
<v Giorgio Ghelli>we assume that we store represent the
list by its length, and then just...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1348-0
01:27:17.863 --> 01:27:22.617
<v Giorgio Ghelli>There is, so with no terminator,
no separator, nothing. Of course,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1348-1
01:27:22.617 --> 01:27:28.293
<v Giorgio Ghelli>you could rather, instead of the length,
use a terminator, nothing, absolutely.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1348-2
01:27:28.293 --> 01:27:31.060
<v Giorgio Ghelli>Changes,
but just this is the standard</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1348-3
01:27:31.060 --> 01:27:33.543
<v Giorgio Ghelli>representation of inverted indexes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1352-0
01:27:36.583 --> 01:27:41.776
<v Giorgio Ghelli>And here,
an inverted index on the birth year, 1970,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1352-1
01:27:41.776 --> 01:27:50.103
<v Giorgio Ghelli>245, 1971, just three, 1972, one and six.
And that's it. Very simple data structure.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1355-0
01:27:54.743 --> 01:28:00.692
<v Giorgio Ghelli>And now we will try to compute the cost
of accessing the index and accessing the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1355-1
01:28:00.692 --> 01:28:03.703
<v Giorgio Ghelli>data in this case, which, as we will see.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1357-0
01:28:04.863 --> 01:28:08.183
<v Giorgio Ghelli>Is a little bit similar to the other one,
but with a trick.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1358-0
01:28:10.023 --> 01:28:10.503
<v Giorgio Ghelli>So.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1363-0
01:28:11.943 --> 01:28:17.537
<v Giorgio Ghelli>The number of records that we want to
retrieve is given by the product between</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1363-1
01:28:17.537 --> 01:28:22.422
<v Giorgio Ghelli>the selectivity factor and the total
number of records in the table.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1363-2
01:28:22.422 --> 01:28:27.520
<v Giorgio Ghelli>We call it the expected record,
the number of records that we expect to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1363-3
01:28:27.520 --> 01:28:30.423
<v Giorgio Ghelli>retrieve. The cost of accessing the index</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1369-0
01:28:30.583 --> 01:28:35.544
<v Giorgio Ghelli>is, as before,
can be estimated at the selectivity</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1369-1
01:28:35.544 --> 01:28:41.867
<v Giorgio Ghelli>factor of the query number of leaves of
the index. In this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1369-2
01:28:41.867 --> 01:28:49.260
<v Giorgio Ghelli>the upper integer path is relevant
because very often this will be a number</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1369-3
01:28:49.260 --> 01:28:51.303
<v Giorgio Ghelli>like 00.2, 0.01, 0.2.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1372-0
01:28:51.623 --> 01:28:56.824
<v Giorgio Ghelli>but actually at least the one page you
have to read it, hence this app.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1372-1
01:28:56.824 --> 01:29:01.303
<v Giorgio Ghelli>This is just useful when this is below
one. If this were 3.5,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1372-2
01:29:01.303 --> 01:29:06.143
<v Giorgio Ghelli>where the difference between 2.
5 and 4 is nothing, we don't care.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1375-0
01:29:09.223 --> 01:29:16.103
<v Giorgio Ghelli>And now the cost of accessing the data,
that's the interesting part of that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1376-0
01:29:17.223 --> 01:29:19.063
<v Giorgio Ghelli>Well, first of all...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1379-0
01:29:28.103 --> 01:29:29.303
<v Giorgio Ghelli>The selectivity factor.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1386-0
01:29:35.903 --> 01:29:42.727
<v Giorgio Ghelli>In order to compute the selectivity
factor, we assume that for every table,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1386-1
01:29:42.727 --> 01:29:49.640
<v Giorgio Ghelli>we know not only N rack and N page,
but also for all the attributes where we</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1386-2
01:29:49.640 --> 01:29:54.220
<v Giorgio Ghelli>build an index,
we also know N key for that index.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1386-3
01:29:54.220 --> 01:29:56.823
<v Giorgio Ghelli>N key means how many entries.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1387-0
01:29:57.143 --> 01:29:58.743
<v Giorgio Ghelli>Do you have in the index?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1392-0
01:30:00.743 --> 01:30:04.722
<v Giorgio Ghelli>You have one entry for every distinct
value.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1392-1
01:30:04.722 --> 01:30:10.116
<v Giorgio Ghelli>So this is just select the count distinct
of that attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1392-2
01:30:10.116 --> 01:30:15.863
<v Giorgio Ghelli>So the equality condition,
the security factor is very simple to</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1393-0
01:30:17.703 --> 01:30:19.383
<v Giorgio Ghelli>Uh, estimator.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1399-0
01:30:21.463 --> 01:30:27.131
<v Giorgio Ghelli>Then,
you observe that for every entry in the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1399-1
01:30:27.131 --> 01:30:35.879
<v Giorgio Ghelli>index, you have a read list,
a list of all the records associated with</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1399-2
01:30:35.879 --> 01:30:38.343
<v Giorgio Ghelli>that entry, and they</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1401-0
01:30:42.503 --> 01:30:49.183
<v Giorgio Ghelli>length of that list is essentially on
average and like divided and keep.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1405-0
01:30:51.623 --> 01:30:59.279
<v Giorgio Ghelli>OK, or if you like,
the selectivity factor of the condition</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1405-1
01:30:59.279 --> 01:31:01.703
<v Giorgio Ghelli>both year equal 17.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1410-0
01:31:02.903 --> 01:31:12.209
<v Giorgio Ghelli>times NREC. If this safety factor is 1%,
then the amount of record in each list</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1410-1
01:31:12.209 --> 01:31:17.327
<v Giorgio Ghelli>will be 1% of all the records in the
table.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1410-2
01:31:17.327 --> 01:31:21.863
<v Giorgio Ghelli>Notice that this list may be very long.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1412-0
01:31:22.263 --> 01:31:26.377
<v Giorgio Ghelli>If imagine that this is a table with
exams,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1412-1
01:31:26.377 --> 01:31:30.023
<v Giorgio Ghelli>you are building an index on the grade.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1417-0
01:31:31.463 --> 01:31:36.993
<v Giorgio Ghelli>You may have 1000 exams with exactly the
same grade. In this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1417-1
01:31:36.993 --> 01:31:43.430
<v Giorgio Ghelli>you will have that NREC divided by NT,
maybe 1000. So this number may be big,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1417-2
01:31:43.430 --> 01:31:44.503
<v Giorgio Ghelli>may be small.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1420-0
01:31:51.383 --> 01:31:55.543
<v Giorgio Ghelli>The total amount of space that you need.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1423-0
01:31:57.223 --> 01:32:03.063
<v Giorgio Ghelli>In order to store an inverted list is
given by.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1424-0
01:32:04.143 --> 01:32:05.223
<v Giorgio Ghelli>Be AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1429-0
01:32:06.503 --> 01:32:10.660
<v Giorgio Ghelli>You remember,
that list has for every different value</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1429-1
01:32:10.660 --> 01:32:14.587
<v Giorgio Ghelli>of the attribute,
you have to store the attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1429-2
01:32:14.587 --> 01:32:20.283
<v Giorgio Ghelli>They say that L of AA is the space that
they need to store the attribute.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1429-3
01:32:20.283 --> 01:32:25.903
<v Giorgio Ghelli>And that they multiply only for a sector
count distinct of the category.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1433-0
01:32:26.743 --> 01:32:35.053
<v Giorgio Ghelli>Only one for every distinct value,
and then the total space occupied by all</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1433-1
01:32:35.053 --> 01:32:39.863
<v Giorgio Ghelli>the RID will be this: Rag times L with
the.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1435-0
01:32:41.143 --> 01:32:44.776
<v Giorgio Ghelli>Why?
Because you need to have in the entire</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1435-1
01:32:44.776 --> 01:32:48.903
<v Giorgio Ghelli>data structure one reader for every
record, so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1441-0
01:32:53.063 --> 01:32:57.851
<v Giorgio Ghelli>You see here, I have one, two, three, 4,
5, 6 reads,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1441-1
01:32:57.851 --> 01:33:04.265
<v Giorgio Ghelli>because each of these five elements must
have its read somewhere here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1441-2
01:33:04.265 --> 01:33:11.221
<v Giorgio Ghelli>So the size of this is the length of a
single read times the total number of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1441-3
01:33:11.221 --> 01:33:11.943
<v Giorgio Ghelli>records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1447-0
01:33:15.783 --> 01:33:20.626
<v Giorgio Ghelli>So this space has two components.
This only goes with N key,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1447-1
01:33:20.626 --> 01:33:25.945
<v Giorgio Ghelli>but this one goes with N crack,
which is usually bigger than that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1447-2
01:33:25.945 --> 01:33:30.153
<v Giorgio Ghelli>And finally,
if you want to know the total number of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1447-3
01:33:30.153 --> 01:33:36.266
<v Giorgio Ghelli>leafs, you divide that by the size,
by how many bytes you are using in every</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1447-4
01:33:36.266 --> 01:33:36.663
<v Giorgio Ghelli>leaf.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1452-0
01:33:36.823 --> 01:33:41.141
<v Giorgio Ghelli>which is given by the dimension of the
pages,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1452-1
01:33:41.141 --> 01:33:46.209
<v Giorgio Ghelli>multiplied by the factor by the density
of that page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1452-2
01:33:46.209 --> 01:33:52.498
<v Giorgio Ghelli>So if you fill every page at 83%,
then this would be 4K times 83%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1452-3
01:33:52.498 --> 01:33:55.783
<v Giorgio Ghelli>the 80% of 4K. And this is the size</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1453-0
01:33:56.183 --> 01:33:57.783
<v Giorgio Ghelli>of the indexer.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1454-0
01:34:00.103 --> 01:34:00.503
<v Giorgio Ghelli>Nour.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1456-0
01:34:03.823 --> 01:34:04.503
<v Giorgio Ghelli>AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1462-0
01:34:07.663 --> 01:34:12.495
<v Giorgio Ghelli>If you want to compute the cost of an
equality search,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1462-1
01:34:12.495 --> 01:34:19.875
<v Giorgio Ghelli>it makes a big difference if the index is
unclustered or if the index is clustered.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1462-2
01:34:19.875 --> 01:34:24.619
<v Giorgio Ghelli>If the index is not clustered,
then for every reader,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1462-3
01:34:24.619 --> 01:34:26.903
<v Giorgio Ghelli>you have to read one page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1466-0
01:34:27.143 --> 01:34:31.996
<v Giorgio Ghelli>and hence the cost will be given by
selectivity factor times N rec.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1466-1
01:34:31.996 --> 01:34:36.850
<v Giorgio Ghelli>We are talking about equality,
so this is selectivity factor of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1466-2
01:34:36.850 --> 01:34:40.061
<v Giorgio Ghelli>equality time.
How many records I must read?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1466-3
01:34:40.061 --> 01:34:44.343
<v Giorgio Ghelli>The cost is exactly the number of records
that I must read.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1471-0
01:34:46.423 --> 01:34:53.965
<v Giorgio Ghelli>If the index is clustered and the read
list is sorted, this is very important.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1471-1
01:34:53.965 --> 01:35:01.412
<v Giorgio Ghelli>If I keep the read list sorted and the
index is clustered, then in this case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1471-2
01:35:01.412 --> 01:35:03.703
<v Giorgio Ghelli>I am in an optimal case.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1476-0
01:35:04.903 --> 01:35:09.815
<v Giorgio Ghelli>I only need,
in order to read the 1% of my students,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1476-1
01:35:09.815 --> 01:35:17.414
<v Giorgio Ghelli>I just need to read the 1% of the pages
because first the students are sorted and</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1476-2
01:35:17.414 --> 01:35:23.623
<v Giorgio Ghelli>2nd the read are sorted.
So first I get all the read for page one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1477-0
01:35:23.703 --> 01:35:29.223
<v Giorgio Ghelli>Then, all the reads for page two,
then all the reads for page three, OK?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1480-0
01:35:31.223 --> 01:35:34.310
<v Giorgio Ghelli>So,
you may imagine here we may have two</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1480-1
01:35:34.310 --> 01:35:38.903
<v Giorgio Ghelli>order of magnitude speed up if you have
100 record per page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1484-0
01:35:40.023 --> 01:35:46.339
<v Giorgio Ghelli>But finally, there is the complicated,
the interesting case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1484-1
01:35:46.339 --> 01:35:50.583
<v Giorgio Ghelli>the one where the index is non-clustered.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1486-0
01:35:52.023 --> 01:35:55.556
<v Giorgio Ghelli>Unfortunately, this is a motivated,
but it is a standard case.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1486-1
01:35:55.556 --> 01:35:58.023
<v Giorgio Ghelli>In the standard case,
you have a heap file.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1489-0
01:35:59.623 --> 01:36:05.376
<v Giorgio Ghelli>In the standard case,
you keep your read list sorted. Now,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1489-1
01:36:05.376 --> 01:36:08.983
<v Giorgio Ghelli>since you have your read list sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1493-0
01:36:10.583 --> 01:36:15.807
<v Giorgio Ghelli>Something interesting happens if you have
3 records in the same page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1493-1
01:36:15.807 --> 01:36:21.703
<v Giorgio Ghelli>Since you keep the read list sorted,
what happens when you scan the read list?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1495-0
01:36:25.623 --> 01:36:27.543
<v Giorgio Ghelli>Which interesting thing had been so.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1497-0
01:36:28.823 --> 01:36:33.303
<v Giorgio Ghelli>The at least is sorted,
and you have three interesting records</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1497-1
01:36:33.303 --> 01:36:33.943
<v Giorgio Ghelli>per page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1499-0
01:36:39.743 --> 01:36:39.863
<v Giorgio Ghelli>Yes.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1503-0
01:36:40.903 --> 01:36:46.166
<v Giorgio Ghelli>You read every page just once,
which is intermediate between this and</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1503-1
01:36:46.166 --> 01:36:49.775
<v Giorgio Ghelli>that.
Here you have 100 interesting records per</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1503-2
01:36:49.775 --> 01:36:53.383
<v Giorgio Ghelli>page,
so you have a speedup of a factor of 100.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1504-0
01:36:54.823 --> 01:36:55.383
<v Giorgio Ghelli>Here.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1511-0
01:37:01.903 --> 01:37:07.236
<v Giorgio Ghelli>Oh, sorry, this is one. Here,
since the reads are not sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1511-1
01:37:07.236 --> 01:37:12.138
<v Giorgio Ghelli>you jump back and forth, back and forth,
back and forth.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1511-2
01:37:12.138 --> 01:37:18.761
<v Giorgio Ghelli>Every record needs one page read. Here,
since you keep the read list sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1511-3
01:37:18.761 --> 01:37:21.943
<v Giorgio Ghelli>if you are lucky that you have three,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1515-0
01:37:22.143 --> 01:37:28.539
<v Giorgio Ghelli>interesting records per page. Well,
you have a reduction with respect to this</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1515-1
01:37:28.539 --> 01:37:33.131
<v Giorgio Ghelli>of one-third. Here,
you would need three operations for</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1515-2
01:37:33.131 --> 01:37:39.035
<v Giorgio Ghelli>getting these three records. Here,
one operation is enough to get these</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1515-3
01:37:39.035 --> 01:37:40.183
<v Giorgio Ghelli>three records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1518-0
01:37:41.023 --> 01:37:46.860
<v Giorgio Ghelli>So, when the index is unclustered,
the read lists are sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1518-1
01:37:46.860 --> 01:37:50.343
<v Giorgio Ghelli>and you are reading a lot of records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1522-0
01:37:51.423 --> 01:37:55.606
<v Giorgio Ghelli>Then,
the simple fact of keeping the release</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1522-1
01:37:55.606 --> 01:38:03.414
<v Giorgio Ghelli>sorted is helping a little bit, not much.
You're not going back to this lucky case,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1522-2
01:38:03.414 --> 01:38:04.343
<v Giorgio Ghelli>but you...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1524-0
01:38:06.583 --> 01:38:13.543
<v Giorgio Ghelli>get to an interesting intermediate case.
Let us analyse this case.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1527-0
01:38:18.983 --> 01:38:22.263
<v Giorgio Ghelli>As well, a little bit better, so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1530-0
01:38:26.583 --> 01:38:32.023
<v Giorgio Ghelli>Assume this is not easy,
but we are going to explain this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1534-0
01:38:33.783 --> 01:38:43.667
<v Giorgio Ghelli>Assume that you have 800 records to
retrieve and your file is just 500,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1534-1
01:38:43.667 --> 01:38:45.863
<v Giorgio Ghelli>100 pages, okay?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1538-0
01:38:47.703 --> 01:38:51.952
<v Giorgio Ghelli>Well,
how many pages you will have to read?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1538-1
01:38:51.952 --> 01:38:59.386
<v Giorgio Ghelli>You know, since you have 800 records,
the probability that a page contains a</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1538-2
01:38:59.386 --> 01:39:01.703
<v Giorgio Ghelli>zero record is very low.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1543-0
01:39:03.783 --> 01:39:09.282
<v Giorgio Ghelli>Panza, at the end of the day,
even if you have all of this beauty of</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1543-1
01:39:09.282 --> 01:39:14.781
<v Giorgio Ghelli>record sorted reads, etc., well,
if every page on average contains 8</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1543-2
01:39:14.781 --> 01:39:19.483
<v Giorgio Ghelli>records, you have some pages with six,
some pages with 10,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1543-3
01:39:19.483 --> 01:39:24.583
<v Giorgio Ghelli>but all pages have a record. And thanks,
the amount of records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1548-0
01:39:24.983 --> 01:39:30.425
<v Giorgio Ghelli>you need to read the amount of pages,
sorry. The blue line is the cost,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1548-1
01:39:30.425 --> 01:39:35.488
<v Giorgio Ghelli>so how many pages I need to read. Well,
you have a lot of records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1548-2
01:39:35.488 --> 01:39:41.231
<v Giorgio Ghelli>so this cost will end up being equal to
this upper bound, which is N patch.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1548-3
01:39:41.231 --> 01:39:44.783
<v Giorgio Ghelli>You will never have to read more than N
patch.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1553-0
01:39:44.903 --> 01:39:51.245
<v Giorgio Ghelli>because you are reading that in order,
so you never read one page twice.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1553-1
01:39:51.245 --> 01:39:57.760
<v Giorgio Ghelli>So even if I have to read a million
records, at most I read the 100 pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1553-2
01:39:57.760 --> 01:40:04.014
<v Giorgio Ghelli>So this end page, this line is end page.
You see this axis is end page.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1553-3
01:40:04.014 --> 01:40:05.143
<v Giorgio Ghelli>This axis is.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1556-0
01:40:05.303 --> 01:40:10.066
<v Giorgio Ghelli>number of expected record.
This axis size of the file. 100,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1556-1
01:40:10.066 --> 01:40:15.543
<v Giorgio Ghelli>the size of the file is an upper bound to
the cost of our operation.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1562-0
01:40:17.743 --> 01:40:23.451
<v Giorgio Ghelli>What is the cost of our operation?
The cost of our operation is given by the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1562-1
01:40:23.451 --> 01:40:27.157
<v Giorgio Ghelli>number of pages that contain at least one
record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1562-2
01:40:27.157 --> 01:40:30.493
<v Giorgio Ghelli>Thanks to the fact that the RIDs are
sorted,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1562-3
01:40:30.493 --> 01:40:35.237
<v Giorgio Ghelli>I read the page if and only if it
contains at least one record.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1562-4
01:40:35.237 --> 01:40:36.423
<v Giorgio Ghelli>So the point is,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1564-0
01:40:36.663 --> 01:40:40.834
<v Giorgio Ghelli>How many pages do contain at least that
one interesting record? Well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1564-1
01:40:40.834 --> 01:40:45.063
<v Giorgio Ghelli>if the interesting record are mainly,
that's just 10 pages, all pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1565-0
01:40:46.103 --> 01:40:48.503
<v Giorgio Ghelli>If the interesting record is just one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1568-0
01:40:49.463 --> 01:40:53.543
<v Giorgio Ghelli>Well, you need exactly one page.
If you have just three interesting</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1568-1
01:40:53.543 --> 01:40:56.663
<v Giorgio Ghelli>records, probably, unless you are very,
very lucky.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1571-0
01:40:57.543 --> 01:41:02.049
<v Giorgio Ghelli>These 3 records will be on three
different pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1571-1
01:41:02.049 --> 01:41:05.743
<v Giorgio Ghelli>The story becomes interesting around 100.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1574-0
01:41:07.303 --> 01:41:11.575
<v Giorgio Ghelli>If you have to read the 100 record out of
100 pages, well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1574-1
01:41:11.575 --> 01:41:17.223
<v Giorgio Ghelli>you will have some pages with zero,
some pages with one, some pages with two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1577-0
01:41:19.223 --> 01:41:23.150
<v Giorgio Ghelli>So at the end of the day,
it will be something like 60% of the</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1577-1
01:41:23.150 --> 01:41:24.583
<v Giorgio Ghelli>pages, not all of them.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1582-0
01:41:27.143 --> 01:41:31.108
<v Giorgio Ghelli>So,
we can observe two things about this</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1582-1
01:41:31.108 --> 01:41:36.233
<v Giorgio Ghelli>function. The Cardenas function,
this function here,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1582-2
01:41:36.233 --> 01:41:42.615
<v Giorgio Ghelli>which I'm describing to you,
estimates how many pages contains at</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1582-3
01:41:42.615 --> 01:41:47.063
<v Giorgio Ghelli>least one interesting record when you
have K.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1584-0
01:41:48.223 --> 01:41:51.143
<v Giorgio Ghelli>Interesting records and N pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1586-0
01:41:54.903 --> 01:41:58.343
<v Giorgio Ghelli>This function has two upper bounds.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1587-0
01:42:00.623 --> 01:42:01.223
<v Giorgio Ghelli>Ben.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1589-0
01:42:02.023 --> 01:42:02.743
<v Giorgio Ghelli>AA.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1590-0
01:42:03.703 --> 01:42:05.543
<v Giorgio Ghelli>Sorry, K and N.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1594-0
01:42:06.663 --> 01:42:12.791
<v Giorgio Ghelli>At the most, if I want to read 50 records,
at the most I need 50 pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1594-1
01:42:12.791 --> 01:42:14.663
<v Giorgio Ghelli>That's an upper bound.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1600-0
01:42:15.943 --> 01:42:22.837
<v Giorgio Ghelli>And if the total number of pages is 100,
at the most, I read 100 pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1600-1
01:42:22.837 --> 01:42:29.060
<v Giorgio Ghelli>So both K and N are both upper bounds for
two different reasons.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1600-2
01:42:29.060 --> 01:42:36.623
<v Giorgio Ghelli>So this function that I'm describing to
you is always smaller than the minimum</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1602-0
01:42:36.743 --> 01:42:42.673
<v Giorgio Ghelli>Between how many records, how many pages?
I will never read more pages than records.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1602-1
01:42:42.673 --> 01:42:45.463
<v Giorgio Ghelli>I will never read more pages than pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1607-0
01:42:47.303 --> 01:42:53.175
<v Giorgio Ghelli>than the total pages of the file. OK,
so this Cardenas function is smaller than</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1607-1
01:42:53.175 --> 01:42:58.239
<v Giorgio Ghelli>the minimum between the two.
The minimum between the two is this red</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1607-2
01:42:58.239 --> 01:43:01.689
<v Giorgio Ghelli>line here.
Are you with me or do you have some</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1607-3
01:43:01.689 --> 01:43:03.303
<v Giorgio Ghelli>doubts? Is that clear?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1608-0
01:43:04.583 --> 01:43:05.703
<v Giorgio Ghelli>Okay, so...</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1610-0
01:43:07.223 --> 01:43:09.063
<v Giorgio Ghelli>The number of pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1611-0
01:43:10.103 --> 01:43:10.903
<v Giorgio Ghelli>That.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1616-0
01:43:14.903 --> 01:43:22.653
<v Giorgio Ghelli>The average number of pages that I have
to read in order that contain at least</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1616-1
01:43:22.653 --> 01:43:27.755
<v Giorgio Ghelli>one element.
What I'm going to tell you in the next</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1616-2
01:43:27.755 --> 01:43:28.343
<v Giorgio Ghelli>minute</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1621-0
01:43:30.423 --> 01:43:34.157
<v Giorgio Ghelli>is out of scope because it's already 6 P.
m.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1621-1
01:43:34.157 --> 01:43:40.130
<v Giorgio Ghelli>I just want you to know that this formula
is very simple to understand,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1621-2
01:43:40.130 --> 01:43:46.435
<v Giorgio Ghelli>but I do not pretend that you neither
understand nor memorise this formula.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1621-3
01:43:46.435 --> 01:43:50.583
<v Giorgio Ghelli>What I really want you to understand and
memorise</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1622-0
01:43:51.223 --> 01:43:52.983
<v Giorgio Ghelli>Is this this a quality?</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1624-0
01:43:53.983 --> 01:43:58.343
<v Giorgio Ghelli>And the fact that this mean right formula
is a good approximation of that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1630-0
01:43:59.503 --> 01:44:04.201
<v Giorgio Ghelli>Now, just to tell you,
how can I understand that formula? Well,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1630-1
01:44:04.201 --> 01:44:08.973
<v Giorgio Ghelli>if you really want to understand the
thing that you really want,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1630-2
01:44:08.973 --> 01:44:15.065
<v Giorgio Ghelli>it is just the probability that the page
is empty is uninteresting, which is this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1630-3
01:44:15.065 --> 01:44:19.543
<v Giorgio Ghelli>And this is a probability that the page
is interesting, one.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1631-0
01:44:19.783 --> 01:44:24.023
<v Giorgio Ghelli>Minus the probability that the page is
empty.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1635-0
01:44:25.303 --> 01:44:29.372
<v Giorgio Ghelli>And then you multiply that for the number
of pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1635-1
01:44:29.372 --> 01:44:33.596
<v Giorgio Ghelli>If the probability that a page is
interesting is 90%,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1635-2
01:44:33.596 --> 01:44:35.943
<v Giorgio Ghelli>you just multiply N times 90%.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1640-0
01:44:36.983 --> 01:44:42.782
<v Giorgio Ghelli>So this is number of pages multiplied by
the probability that the page is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1640-1
01:44:42.782 --> 01:44:46.387
<v Giorgio Ghelli>interesting.
The probability that the page is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1640-2
01:44:46.387 --> 01:44:51.951
<v Giorgio Ghelli>interesting is 1 minus the probability
that the page is uninteresting.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1640-3
01:44:51.951 --> 01:44:56.183
<v Giorgio Ghelli>For the page to be uninteresting,
you need that every</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1642-0
01:44:56.583 --> 01:45:01.463
<v Giorgio Ghelli>For each of the K record,
you do a random extraction.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1647-0
01:45:02.663 --> 01:45:08.743
<v Giorgio Ghelli>And for that random extraction,
you get a page that is different from</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1647-1
01:45:08.743 --> 01:45:13.954
<v Giorgio Ghelli>page 3, for example.
What is the probability that page 3 is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1647-2
01:45:13.954 --> 01:45:18.557
<v Giorgio Ghelli>uninteresting?
It is the fact that for each of the K</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1647-3
01:45:18.557 --> 01:45:21.423
<v Giorgio Ghelli>element records, when you extract</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1651-0
01:45:21.543 --> 01:45:26.904
<v Giorgio Ghelli>in which page you will send it,
the result will be different from page 3.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1651-1
01:45:26.904 --> 01:45:30.889
<v Giorgio Ghelli>The probability that is different from
page 3 is this,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1651-2
01:45:30.889 --> 01:45:34.583
<v Giorgio Ghelli>1 minus the probability that it is
exactly page 3.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1653-0
01:45:36.183 --> 01:45:39.897
<v Giorgio Ghelli>And in order to be so lucky for 30
records,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1653-1
01:45:39.897 --> 01:45:43.863
<v Giorgio Ghelli>you need to multiply that for itself 30
times.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1657-0
01:45:45.063 --> 01:45:49.530
<v Giorgio Ghelli>So if all of your 30 extraction,
you got a page different from page three,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1657-1
01:45:49.530 --> 01:45:53.460
<v Giorgio Ghelli>page three is uninteresting.
So this is the probability that page</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1657-2
01:45:53.460 --> 01:45:57.093
<v Giorgio Ghelli>three is uninteresting.
So this is the probability that page</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1657-3
01:45:57.093 --> 01:45:58.343
<v Giorgio Ghelli>three is interesting.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1663-0
01:46:01.863 --> 01:46:06.464
<v Giorgio Ghelli>I don't know where you went lost in all
of this. I hope quite late,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1663-1
01:46:06.464 --> 01:46:10.726
<v Giorgio Ghelli>maybe quite early, I have no idea.
They're totally irrelevant.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1663-2
01:46:10.726 --> 01:46:14.921
<v Giorgio Ghelli>Just remember that this probability is
not out of your reach.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1663-3
01:46:14.921 --> 01:46:20.468
<v Giorgio Ghelli>If you really think 5 or 10 minutes about
this, you can get it. But I don't care.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1663-4
01:46:20.468 --> 01:46:23.783
<v Giorgio Ghelli>There is really no reason why you
memorise this.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1668-0
01:46:24.103 --> 01:46:29.338
<v Giorgio Ghelli>No reason at all.
We will always approximate this Cardela</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1668-1
01:46:29.338 --> 01:46:33.399
<v Giorgio Ghelli>formulas with the minimum between these
two.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1668-2
01:46:33.399 --> 01:46:40.348
<v Giorgio Ghelli>So the cost of getting this number of
records out of this number of pages is</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1668-3
01:46:40.348 --> 01:46:45.492
<v Giorgio Ghelli>just the smaller,
whichever the smaller between this and</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1668-4
01:46:45.492 --> 01:46:45.943
<v Giorgio Ghelli>that.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1672-0
01:46:46.023 --> 01:46:49.733
<v Giorgio Ghelli>This is the cost.
If you get less vehicles than pages,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1672-1
01:46:49.733 --> 01:46:54.589
<v Giorgio Ghelli>then it is the number of records,
but if the number of pages is smaller</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1672-2
01:46:54.589 --> 01:46:58.703
<v Giorgio Ghelli>than the number of vehicles,
then it is the number of pages.</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1675-0
01:46:59.703 --> 01:47:06.403
<v Giorgio Ghelli>Sounds like, but I mean, it's really,
but it's not that far. OK,</v>

54cb2876-d02f-4d06-bc53-6b4e50eeeeb8/1675-1
01:47:06.403 --> 01:47:10.423
<v Giorgio Ghelli>let's look for it. We will continue on.</v>