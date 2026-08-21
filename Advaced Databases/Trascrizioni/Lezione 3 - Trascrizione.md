WEBVTT

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/10-0
00:00:25.510 --> 00:00:27.590
<v Giorgio Ghelli>But we are discussing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/12-0
00:00:32.230 --> 00:00:32.710
<v Giorgio Ghelli>Bing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/18-0
00:00:34.590 --> 00:00:40.633
<v Giorgio Ghelli>For the discussion data organization,
that is how do you store records in a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/18-1
00:00:40.633 --> 00:00:45.007
<v Giorgio Ghelli>file? We have seen yesterday,
if I remember correctly,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/18-2
00:00:45.007 --> 00:00:48.903
<v Giorgio Ghelli>heap organization,
you just one after the other,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/18-3
00:00:48.903 --> 00:00:54.230
<v Giorgio Ghelli>or sequential organization,
you keep them sorted on one attribute.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/23-0
00:00:55.750 --> 00:00:59.812
<v Giorgio Ghelli>Of course,
it's fundamental to remember that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/23-1
00:00:59.812 --> 00:01:05.408
<v Giorgio Ghelli>sequential organization,
exactly like hash organisation or V3</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/23-2
00:01:05.408 --> 00:01:09.740
<v Giorgio Ghelli>organization,
depend on one specific attribute.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/23-3
00:01:09.740 --> 00:01:13.350
<v Giorgio Ghelli>So if you have a primary organisation on</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/29-0
00:01:13.390 --> 00:01:17.818
<v Giorgio Ghelli>family name,
then your data will be sorted or hashed</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/29-1
00:01:17.818 --> 00:01:22.663
<v Giorgio Ghelli>on family name,
which will help when you search on family</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/29-2
00:01:22.663 --> 00:01:26.590
<v Giorgio Ghelli>name,
but will not have at all when you search</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/29-3
00:01:26.590 --> 00:01:30.683
<v Giorgio Ghelli>on any other attribute.
For any other attribute,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/29-4
00:01:30.683 --> 00:01:32.270
<v Giorgio Ghelli>you are as a group.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/66-0
00:01:42.277 --> 00:01:49.780
<v Giorgio Ghelli>organisation different from the heap
organisation is based, first of all,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/66-1
00:01:49.780 --> 00:01:54.444
<v Giorgio Ghelli>on the decision about which is the
attribute,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/66-2
00:01:54.444 --> 00:02:01.237
<v Giorgio Ghelli>whose search I want to optimize.
When you really want to optimize,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/68-0
00:02:01.277 --> 00:02:01.397
<v Giorgio Ghelli>Yeah.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/69-0
00:02:02.637 --> 00:02:03.477
<v Giorgio Ghelli>For AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/109-0
00:02:04.757 --> 00:02:10.696
<v Giorgio Ghelli>An attribute, of course,
you just choose anything which is not</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/109-1
00:02:10.696 --> 00:02:18.238
<v Giorgio Ghelli>keep sequential is already quite fast,
but the hash and the B3 are even better.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/109-2
00:02:18.238 --> 00:02:24.837
<v Giorgio Ghelli>So this is what we are going to study now,
hash and B3 organisations.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/152-0
00:02:25.197 --> 00:02:30.143
<v Giorgio Ghelli>As I told you yesterday already,
an organisation is the primary</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/152-1
00:02:30.143 --> 00:02:35.939
<v Giorgio Ghelli>organisation if it is the one that you
use to decide where to put the next</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/152-2
00:02:35.939 --> 00:02:39.417
<v Giorgio Ghelli>record,
any table that has one and exactly 1</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/152-3
00:02:39.417 --> 00:02:42.894
<v Giorgio Ghelli>primary,
and then you may add some secondary</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/152-4
00:02:42.894 --> 00:02:44.517
<v Giorgio Ghelli>organisation that is.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/157-0
00:02:44.837 --> 00:02:48.917
<v Giorgio Ghelli>Essentially, indexes,
but we will discuss that later.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/215-0
00:02:51.237 --> 00:02:55.995
<v Giorgio Ghelli>So you have the prime organization,
you organise your data as you like,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/215-1
00:02:55.995 --> 00:03:00.818
<v Giorgio Ghelli>maybe with a tree, maybe as you like,
and then you may add some indexes.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/215-2
00:03:00.818 --> 00:03:05.840
<v Giorgio Ghelli>And of course, also for the indexes,
exactly as for the prime organization,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/215-3
00:03:05.840 --> 00:03:09.739
<v Giorgio Ghelli>you must decide how you do,
how do you organise the index.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/215-4
00:03:09.739 --> 00:03:13.637
<v Giorgio Ghelli>We will see that indexes usually are
organised as B-trees.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/226-0
00:03:14.037 --> 00:03:18.066
<v Giorgio Ghelli>or hash tables, prime organization,
whatever you like,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/226-1
00:03:18.066 --> 00:03:20.117
<v Giorgio Ghelli>heaps equation between hash.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/238-0
00:03:21.437 --> 00:03:24.427
<v Giorgio Ghelli>For the index,
if the index is more to be faster,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/238-1
00:03:24.427 --> 00:03:27.237
<v Giorgio Ghelli>of course,
you will use a faster organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/280-0
00:03:29.637 --> 00:03:35.120
<v Giorgio Ghelli>We already discussed the distinction
between static organisation and dynamic</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/280-1
00:03:35.120 --> 00:03:38.183
<v Giorgio Ghelli>organization.
Static organisation may need</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/280-2
00:03:38.183 --> 00:03:41.957
<v Giorgio Ghelli>reorganisation after a lot of insertion
or deletion,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/280-3
00:03:41.957 --> 00:03:46.728
<v Giorgio Ghelli>or even maybe for every insertion,
like it happens with the static</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/280-4
00:03:46.728 --> 00:03:48.437
<v Giorgio Ghelli>sequential organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/311-0
00:03:48.917 --> 00:03:52.387
<v Giorgio Ghelli>or after a while if you use a
differential file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/311-1
00:03:52.387 --> 00:03:57.132
<v Giorgio Ghelli>but still every now and then you need to
stop, rebuild the system.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/311-2
00:03:57.132 --> 00:04:00.461
<v Giorgio Ghelli>Dynamic is 1 where for every single
operation,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/311-3
00:04:00.461 --> 00:04:03.789
<v Giorgio Ghelli>the structure may evolve a little bit
locally,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/311-4
00:04:03.789 --> 00:04:06.197
<v Giorgio Ghelli>but never the entire organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/312-0
00:04:09.877 --> 00:04:10.277
<v Giorgio Ghelli>So...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/355-0
00:04:11.717 --> 00:04:16.161
<v Giorgio Ghelli>Hash organization.
The hash organisation may be static or</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/355-1
00:04:16.161 --> 00:04:21.983
<v Giorgio Ghelli>dynamic per default. By default,
that is static. When you say nothing more,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/355-2
00:04:21.983 --> 00:04:25.737
<v Giorgio Ghelli>when you say hash,
you usually mean static hash.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/355-3
00:04:25.737 --> 00:04:30.717
<v Giorgio Ghelli>Static hash is a very common,
widely used organization, dynamic.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/370-0
00:04:30.837 --> 00:04:35.497
<v Giorgio Ghelli>Hash is very,
very hardly use that is regarded as a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/370-1
00:04:35.497 --> 00:04:37.917
<v Giorgio Ghelli>little bit too complicated.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/418-0
00:04:38.677 --> 00:04:42.689
<v Giorgio Ghelli>People just say,
if you need a dynamic organization,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/418-1
00:04:42.689 --> 00:04:46.852
<v Giorgio Ghelli>use a B tree.
If you have a static file and you need a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/418-2
00:04:46.852 --> 00:04:51.772
<v Giorgio Ghelli>very fast access by a primary index,
by sorry, a quality search,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/418-3
00:04:51.772 --> 00:04:57.070
<v Giorgio Ghelli>then hash may be the choice.
So you have a certain number of records,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/418-4
00:04:57.070 --> 00:04:58.357
<v Giorgio Ghelli>we use N records.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/453-0
00:04:58.677 --> 00:05:04.154
<v Giorgio Ghelli>to indicate how many records do we have.
For simplicity,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/453-1
00:05:04.154 --> 00:05:10.207
<v Giorgio Ghelli>we assume that this record has more or
less all the same size.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/453-2
00:05:10.207 --> 00:05:17.317
<v Giorgio Ghelli>And this store this record in a set of
pages, each with a given capacity.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/499-0
00:05:17.397 --> 00:05:24.222
<v Giorgio Ghelli>and you fix a priori where the capacity
is a consequence of the page size and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/499-1
00:05:24.222 --> 00:05:30.347
<v Giorgio Ghelli>record size which are fixed.
You fix a priori how many pages you will</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/499-2
00:05:30.347 --> 00:05:34.460
<v Giorgio Ghelli>allocate.
Usually you would like m * c to be a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/499-3
00:05:34.460 --> 00:05:36.997
<v Giorgio Ghelli>little bit bigger than Enric.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/534-0
00:05:37.077 --> 00:05:42.624
<v Giorgio Ghelli>so that you have a little bit of space in
each picture.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/534-1
00:05:42.624 --> 00:05:49.062
<v Giorgio Ghelli>So you decide essentially the ratio
between NREC and the number,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/534-2
00:05:49.062 --> 00:05:55.797
<v Giorgio Ghelli>the total capacity of your file per page
capacity, number of pages.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/581-0
00:05:56.277 --> 00:06:02.334
<v Giorgio Ghelli>This is called the loading factor or
density of your hash table. And of course,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/581-1
00:06:02.334 --> 00:06:05.817
<v Giorgio Ghelli>if you have a load factor which is too
small,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/581-2
00:06:05.817 --> 00:06:11.420
<v Giorgio Ghelli>you have a lot of empty space in every
page with all the problems that we</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/581-3
00:06:11.420 --> 00:06:15.963
<v Giorgio Ghelli>discussed yesterday.
If you fix the loading factor which is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/581-4
00:06:15.963 --> 00:06:17.477
<v Giorgio Ghelli>too wide, 100%, 99%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/623-0
00:06:17.797 --> 00:06:24.066
<v Giorgio Ghelli>then you may have a lot of overflow.
You already know what is a hash function.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/623-1
00:06:24.066 --> 00:06:30.336
<v Giorgio Ghelli>You know that you have overflow when you
have too many data to put in the same</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/623-2
00:06:30.336 --> 00:06:34.859
<v Giorgio Ghelli>page, but we will be discussing that.
So you have a key,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/623-3
00:06:34.859 --> 00:06:37.557
<v Giorgio Ghelli>you apply a hash function to this.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/658-0
00:06:37.597 --> 00:06:41.895
<v Giorgio Ghelli>P,
and the result of this hash function is a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/658-1
00:06:41.895 --> 00:06:46.479
<v Giorgio Ghelli>number between one and then,
or zero and m - 1,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/658-2
00:06:46.479 --> 00:06:51.827
<v Giorgio Ghelli>which we use in order to establish where
to store your.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/658-3
00:06:51.827 --> 00:06:57.557
<v Giorgio Ghelli>The interesting thing in this
organisation is that on hash.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/676-0
00:06:58.117 --> 00:07:02.028
<v Giorgio Ghelli>in main memory,
where usually every bucket,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/676-1
00:07:02.028 --> 00:07:07.717
<v Giorgio Ghelli>every entry in the hash table has space
for exactly one record.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/716-0
00:07:08.917 --> 00:07:15.808
<v Giorgio Ghelli>So as soon as you have the second record
with the same hash transformation,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/716-1
00:07:15.808 --> 00:07:22.608
<v Giorgio Ghelli>you immediately get an overflow. Here,
for every page, we have a capacity,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/716-2
00:07:22.608 --> 00:07:29.317
<v Giorgio Ghelli>which is usually quite big, say 100.
So if you feel that 90% of capacity,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/745-0
00:07:29.717 --> 00:07:33.740
<v Giorgio Ghelli>Well, the first,
the 10% insertion that end here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/745-1
00:07:33.740 --> 00:07:39.372
<v Giorgio Ghelli>we have no output. So overall,
once you have a bucket that contains a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/745-2
00:07:39.372 --> 00:07:43.877
<v Giorgio Ghelli>lot of grey water,
becomes an event which is much rare.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/746-0
00:07:45.117 --> 00:07:45.877
<v Giorgio Ghelli>Seven.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/787-0
00:07:47.077 --> 00:07:53.887
<v Giorgio Ghelli>Let you imagine that your pages just have
space 3 and you fool them up to two</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/787-1
00:07:53.887 --> 00:07:58.863
<v Giorgio Ghelli>records. Well, the first record,
they are not a problem,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/787-2
00:07:58.863 --> 00:08:03.927
<v Giorgio Ghelli>but already the second is an outflow.
If you have a page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/787-3
00:08:03.927 --> 00:08:06.197
<v Giorgio Ghelli>so if your page has depth,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/794-0
00:08:11.477 --> 00:08:15.237
<v Giorgio Ghelli>Size 3, size, let's say three.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/802-0
00:08:17.877 --> 00:08:21.557
<v Giorgio Ghelli>and your distribution of the probability.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/807-0
00:08:25.237 --> 00:08:27.157
<v Giorgio Ghelli>That the page gets.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/867-0
00:08:29.277 --> 00:08:32.718
<v Giorgio Ghelli>and the probability peaks here,
near to two,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/867-1
00:08:32.718 --> 00:08:38.377
<v Giorgio Ghelli>you see that you have immediately a very
high probability of three, 4, 5.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/867-2
00:08:38.377 --> 00:08:44.112
<v Giorgio Ghelli>But if the page is 200, 300, 400,
then this probability curve is much more</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/867-3
00:08:44.112 --> 00:08:48.394
<v Giorgio Ghelli>peaked. I mean, when you are adding one,
two, three, 4,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/867-4
00:08:48.394 --> 00:08:50.917
<v Giorgio Ghelli>you need to add a lot of element.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/875-0
00:08:51.157 --> 00:08:55.957
<v Giorgio Ghelli>To go from 200 to 300,
so when you have a lot of...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/887-0
00:08:58.037 --> 00:09:02.914
<v Giorgio Ghelli>items per page,
the probability that you really have an</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/887-1
00:09:02.914 --> 00:09:04.917
<v Giorgio Ghelli>overflow is much lower.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/940-0
00:09:06.237 --> 00:09:11.141
<v Giorgio Ghelli>When everything else is the same, I mean,
with the same density.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/940-1
00:09:11.141 --> 00:09:15.894
<v Giorgio Ghelli>You have a 90% density.
If every page has two space for three,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/940-2
00:09:15.894 --> 00:09:19.440
<v Giorgio Ghelli>arriving at 4 is very faster with 90%
density.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/940-3
00:09:19.440 --> 00:09:24.797
<v Giorgio Ghelli>But if you have a 300 before arriving to
400, the probability is much.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/946-0
00:09:25.557 --> 00:09:29.717
<v Giorgio Ghelli>So for this reason, let's see,
I think I have a graph.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/956-0
00:09:46.277 --> 00:09:48.437
<v Giorgio Ghelli>But it's not very easy to read the.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1005-0
00:09:49.637 --> 00:09:53.513
<v Giorgio Ghelli>this graph.
This graph shows you how the probability</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1005-1
00:09:53.513 --> 00:09:57.609
<v Giorgio Ghelli>of an overflow decreasing.
If you fix a 90% of density,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1005-2
00:09:57.609 --> 00:10:03.386
<v Giorgio Ghelli>when the page just contains 5 elements,
the probability of an overflow is very</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1005-3
00:10:03.386 --> 00:10:06.604
<v Giorgio Ghelli>high.
But when the capacity of the pages go</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1005-4
00:10:06.604 --> 00:10:09.237
<v Giorgio Ghelli>down to 30, the overflow probability</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1044-0
00:10:09.437 --> 00:10:15.508
<v Giorgio Ghelli>becomes much, much lower.
The percentage of the pages that going</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1044-1
00:10:15.508 --> 00:10:21.018
<v Giorgio Ghelli>overflow here is 20%, here is 5%.
So just by keeping data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1044-2
00:10:21.018 --> 00:10:26.715
<v Giorgio Ghelli>having the data smaller,
the granularity finer allows you to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1044-3
00:10:26.715 --> 00:10:29.237
<v Giorgio Ghelli>reduce a lot the problem of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1077-0
00:10:30.597 --> 00:10:36.066
<v Giorgio Ghelli>overflow. So already 90% of factor,
which is quite a lot,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1077-1
00:10:36.066 --> 00:10:42.289
<v Giorgio Ghelli>with just 30 per page reduces the
overflow probability around 3%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1077-2
00:10:42.289 --> 00:10:49.077
<v Giorgio Ghelli>So as you see, when the pages are bigger,
you have overflow probability</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1116-0
00:10:49.717 --> 00:10:54.905
<v Giorgio Ghelli>much, much smaller with the same density,
with the density of 90%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1116-1
00:10:54.905 --> 00:10:59.783
<v Giorgio Ghelli>You know very well when you build a hash
table in main memory,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1116-2
00:10:59.783 --> 00:11:03.655
<v Giorgio Ghelli>if you want to have a limited amount of
overflow,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1116-3
00:11:03.655 --> 00:11:06.597
<v Giorgio Ghelli>you make it twice as big as your data.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1134-0
00:11:07.557 --> 00:11:14.490
<v Giorgio Ghelli>because every bucket is exercise one.
But if you have a much bigger bucket than</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1134-1
00:11:14.490 --> 00:11:17.957
<v Giorgio Ghelli>you need, you can be much more dense. So</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1182-0
00:11:19.717 --> 00:11:25.085
<v Giorgio Ghelli>The typical hash function usually is
defined like this. You have the key,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1182-1
00:11:25.085 --> 00:11:29.873
<v Giorgio Ghelli>you have a general purpose hash function.
If the key is a string,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1182-2
00:11:29.873 --> 00:11:34.299
<v Giorgio Ghelli>you have a general purpose hash for
strings. It is a number,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1182-3
00:11:34.299 --> 00:11:39.667
<v Giorgio Ghelli>general purpose hash for numbers.
This operation typically try to get the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1182-4
00:11:39.667 --> 00:11:39.957
<v Giorgio Ghelli>bits</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1224-0
00:11:40.277 --> 00:11:45.434
<v Giorgio Ghelli>from different parts of the string,
the bits from different parts of the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1224-1
00:11:45.434 --> 00:11:48.966
<v Giorgio Ghelli>number, and multiplying all of them,
essentially.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1224-2
00:11:48.966 --> 00:11:53.134
<v Giorgio Ghelli>This is a typical hash function.
And then you do modulo M.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1224-3
00:11:53.134 --> 00:11:58.997
<v Giorgio Ghelli>It's important that you get the different
bits from different parts of the number.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1246-0
00:11:59.077 --> 00:12:03.597
<v Giorgio Ghelli>of this last thing in order to avoid the
excessive regularity.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1246-1
00:12:03.597 --> 00:12:08.117
<v Giorgio Ghelli>Imagine that most of you stay in the
field with a single zero.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1273-0
00:12:09.237 --> 00:12:12.682
<v Giorgio Ghelli>Then it's important that you do not just
use the time part of this data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1273-1
00:12:12.682 --> 00:12:16.551
<v Giorgio Ghelli>but also the initial part and vice versa.
If most of them beginner with one makes</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1273-2
00:12:16.551 --> 00:12:19.477
<v Giorgio Ghelli>it important that you also get something
from the end design.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1319-0
00:12:20.997 --> 00:12:25.037
<v Giorgio Ghelli>So you have a generic function that you
get from any library,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1319-1
00:12:25.037 --> 00:12:28.230
<v Giorgio Ghelli>and then which gives you a very long bit
string,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1319-2
00:12:28.230 --> 00:12:33.704
<v Giorgio Ghelli>and then you just compute the modulo M so
that you distribute uniformly that on the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1319-3
00:12:33.704 --> 00:12:38.005
<v Giorgio Ghelli>first M number. Of course,
it's very important that this function</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1319-4
00:12:38.005 --> 00:12:40.677
<v Giorgio Ghelli>does not always yield or preferably yield</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1330-0
00:12:41.317 --> 00:12:46.290
<v Giorgio Ghelli>Even number,
if this function has a preference for</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1330-1
00:12:46.290 --> 00:12:47.557
<v Giorgio Ghelli>even numbers.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1351-0
00:12:48.637 --> 00:12:54.293
<v Giorgio Ghelli>Then, after modulo M, if M is even,
you will get the always only even numbers,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1351-1
00:12:54.293 --> 00:12:57.157
<v Giorgio Ghelli>and you will get the half of your space.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1380-0
00:12:58.357 --> 00:13:03.175
<v Giorgio Ghelli>Baazizi and type and use them.
Let's just let us just say that these</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1380-1
00:13:03.175 --> 00:13:08.830
<v Giorgio Ghelli>problems are very, very, very well known,
so you may reasonably assume that this</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1380-2
00:13:08.830 --> 00:13:09.877
<v Giorgio Ghelli>hash action is.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1382-0
00:13:10.957 --> 00:13:12.757
<v Giorgio Ghelli>But I mean, it's not that easy.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1421-0
00:13:14.677 --> 00:13:22.970
<v Giorgio Ghelli>And then, when, as we you already know,
whenever to is the same hash module M,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1421-1
00:13:22.970 --> 00:13:28.953
<v Giorgio Ghelli>then is called a collision.
Collisions is not a problem,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1421-2
00:13:28.953 --> 00:13:34.517
<v Giorgio Ghelli>because you can you have a lot of space
in the page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1459-0
00:13:34.677 --> 00:13:40.942
<v Giorgio Ghelli>But when the number of is such that you
have more record than can fit a page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1459-1
00:13:40.942 --> 00:13:47.047
<v Giorgio Ghelli>then you have a full of overflow and you
need to allocate some extra space.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1459-2
00:13:47.047 --> 00:13:51.224
<v Giorgio Ghelli>There are many,
many different techniques to manage</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1459-3
00:13:51.224 --> 00:13:54.437
<v Giorgio Ghelli>overflow. In this course for simplicity,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1489-0
00:13:54.597 --> 00:13:59.608
<v Giorgio Ghelli>we just assume that overflow is managed
page by page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1489-1
00:13:59.608 --> 00:14:06.197
<v Giorgio Ghelli>If a single page gets overflow,
then you just allocate one entire page</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1489-2
00:14:06.197 --> 00:14:10.837
<v Giorgio Ghelli>just to contain the overflow of this
single page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1538-0
00:14:13.717 --> 00:14:21.013
<v Giorgio Ghelli>With this technique, essentially,
if you have a 10% probability of overflow,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1538-1
00:14:21.013 --> 00:14:28.119
<v Giorgio Ghelli>typically out of 10 read operation,
9 will read one page and one will just</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1538-2
00:14:28.119 --> 00:14:33.424
<v Giorgio Ghelli>read 2 pages.
Since you dedicate one entire page to the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1538-3
00:14:33.424 --> 00:14:34.277
<v Giorgio Ghelli>overflow,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1584-0
00:14:34.517 --> 00:14:39.963
<v Giorgio Ghelli>It never happens that one page has two,
3 pages of overflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1584-1
00:14:39.963 --> 00:14:45.051
<v Giorgio Ghelli>Every page is either like this or it has
one extra page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1584-2
00:14:45.051 --> 00:14:52.728
<v Giorgio Ghelli>So the cost of access is 190% of the case,
two in the worst case, which is very rare.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1584-3
00:14:52.728 --> 00:14:55.317
<v Giorgio Ghelli>So on average, let's say 1.1.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1620-0
00:15:02.517 --> 00:15:06.718
<v Giorgio Ghelli>So, hashing,
as soon as the pages have a reasonable</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1620-1
00:15:06.718 --> 00:15:11.485
<v Giorgio Ghelli>capacity, hashing becomes very,
very complicated. You see,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1620-2
00:15:11.485 --> 00:15:16.736
<v Giorgio Ghelli>already in this area,
the probability of that is very, you know,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1620-3
00:15:16.736 --> 00:15:18.917
<v Giorgio Ghelli>even with the high density.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1621-0
00:15:23.357 --> 00:15:23.797
<v Giorgio Ghelli>So.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1623-0
00:15:25.317 --> 00:15:26.117
<v Giorgio Ghelli>AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1673-0
00:15:28.077 --> 00:15:32.596
<v Giorgio Ghelli>Until you've not exaggerated with the
overflow,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1673-1
00:15:32.596 --> 00:15:40.316
<v Giorgio Ghelli>then you have an excellent performance
for equality search. With equality search,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1673-2
00:15:40.316 --> 00:15:44.836
<v Giorgio Ghelli>typically the cost is 1 or let's say 1.1.
Well,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1673-3
00:15:44.836 --> 00:15:49.637
<v Giorgio Ghelli>but if there is a time I'm hashing on
family name,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1720-0
00:15:50.197 --> 00:15:56.124
<v Giorgio Ghelli>And there is one family name that is so
common that you need just three pages</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1720-1
00:15:56.124 --> 00:15:59.695
<v Giorgio Ghelli>only for this family name. Well,
in this case,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1720-2
00:15:59.695 --> 00:16:03.190
<v Giorgio Ghelli>you would have for that specific family
name,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1720-3
00:16:03.190 --> 00:16:07.446
<v Giorgio Ghelli>you will have a big overflow of three
pages, and hence,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1720-4
00:16:07.446 --> 00:16:09.877
<v Giorgio Ghelli>in order to get 3 pages of data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1751-0
00:16:10.117 --> 00:16:16.846
<v Giorgio Ghelli>you will read the three pages from this,
which is excellent. So for equality,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1751-1
00:16:16.846 --> 00:16:24.094
<v Giorgio Ghelli>even in case that is equality is not very
selective, the result is kind of optimal.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1751-2
00:16:24.094 --> 00:16:27.717
<v Giorgio Ghelli>The problem lies with the interval search.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1796-0
00:16:29.877 --> 00:16:34.175
<v Giorgio Ghelli>If I'm looking,
if I have some temperature that I</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1796-1
00:16:34.175 --> 00:16:39.333
<v Giorgio Ghelli>measured and measure the temperature in
the floating point,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1796-2
00:16:39.333 --> 00:16:46.124
<v Giorgio Ghelli>I measure temperature with the highest
density and they want all samples where</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1796-3
00:16:46.124 --> 00:16:49.477
<v Giorgio Ghelli>the temperature is between 100 and 101.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1841-0
00:16:50.357 --> 00:16:57.007
<v Giorgio Ghelli>Well, between 100 and 100 and one,
there are infinitely many numbers.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1841-1
00:16:57.007 --> 00:17:04.132
<v Giorgio Ghelli>So I cannot hash on 100, 100, 0001, 100,
0002, 100, 0003. It's impossible.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1841-2
00:17:04.132 --> 00:17:09.357
<v Giorgio Ghelli>Whenever, I mean, if it is a discrete,
small interval,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1889-0
00:17:09.957 --> 00:17:15.676
<v Giorgio Ghelli>All the exams grades between twenty-five
and twenty-seven, 25, 26 seconds. Now,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1889-1
00:17:15.676 --> 00:17:19.393
<v Giorgio Ghelli>in general case,
usually when I look at an interval</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1889-2
00:17:19.393 --> 00:17:24.183
<v Giorgio Ghelli>between floating point numbers or an
interval between the strings,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1889-3
00:17:24.183 --> 00:17:28.258
<v Giorgio Ghelli>then there are just too many values in
the interval. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1889-4
00:17:28.258 --> 00:17:31.117
<v Giorgio Ghelli>the only possibility is a table scanner.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1932-0
00:17:31.557 --> 00:17:36.885
<v Giorgio Ghelli>Of course, with the hash table,
you can always with the table scanner.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1932-1
00:17:36.885 --> 00:17:42.362
<v Giorgio Ghelli>We assume that when you get file,
you can scan all of the pages you can.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1932-2
00:17:42.362 --> 00:17:47.765
<v Giorgio Ghelli>But the problem is that if the density is
90%, then with table scanner,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1932-3
00:17:47.765 --> 00:17:52.117
<v Giorgio Ghelli>I'm bringing in memory at 10% of the
useless garbage. And</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1974-0
00:17:52.277 --> 00:17:58.919
<v Giorgio Ghelli>density of 90%, well, it's doable.
If the file is absolutely static,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1974-1
00:17:58.919 --> 00:18:05.657
<v Giorgio Ghelli>then you can allocate the file with a
variable dimension of 90%, etc.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1974-2
00:18:05.657 --> 00:18:13.647
<v Giorgio Ghelli>But as soon as the file is quite dynamic,
you may end up having a density of 100%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1988-0
00:18:13.797 --> 00:18:18.052
<v Giorgio Ghelli>over a density of 70%,
it's very difficult to keep the file with</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/1988-1
00:18:18.052 --> 00:18:20.997
<v Giorgio Ghelli>a reasonable density in a hash
organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2001-0
00:18:22.597 --> 00:18:25.597
<v Giorgio Ghelli>So,
the first problem with so hash is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2001-1
00:18:25.597 --> 00:18:28.517
<v Giorgio Ghelli>excellent for this horrible for that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2015-0
00:18:30.717 --> 00:18:35.589
<v Giorgio Ghelli>And of course,
the other problem of hash organization,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2015-1
00:18:35.589 --> 00:18:36.917
<v Giorgio Ghelli>it is a static.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2053-0
00:18:38.837 --> 00:18:42.940
<v Giorgio Ghelli>So,
static means that if you insert and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2053-1
00:18:42.940 --> 00:18:51.250
<v Giorgio Ghelli>insert and insert and insert and insert,
at some point you arrive at the density</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2053-2
00:18:51.250 --> 00:18:53.917
<v Giorgio Ghelli>of 100%, 120%, 130%, 200%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2097-0
00:18:54.797 --> 00:18:58.766
<v Giorgio Ghelli>At this point,
once you arrive around 200%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2097-1
00:18:58.766 --> 00:19:03.546
<v Giorgio Ghelli>the organisation is not working as good
as expected,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2097-2
00:19:03.546 --> 00:19:09.498
<v Giorgio Ghelli>and you need to reorganise your data.
So you will stop the world,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2097-3
00:19:09.498 --> 00:19:13.557
<v Giorgio Ghelli>you will choose a different value for big
M,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2138-0
00:19:13.877 --> 00:19:18.783
<v Giorgio Ghelli>a different side,
you made-up the size of your side,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2138-1
00:19:18.783 --> 00:19:25.541
<v Giorgio Ghelli>and then you reload the entire side.
So this is called a reorganization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2138-2
00:19:25.541 --> 00:19:30.355
<v Giorgio Ghelli>That means that this is not a dynamic
organization,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2138-3
00:19:30.355 --> 00:19:33.317
<v Giorgio Ghelli>but it is a static organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2140-0
00:19:33.957 --> 00:19:35.157
<v Giorgio Ghelli>By the way.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2156-0
00:19:36.517 --> 00:19:45.397
<v Giorgio Ghelli>How do you reorganise your file when you
change the data organization?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2193-0
00:19:46.357 --> 00:19:50.040
<v Giorgio Ghelli>So,
the naive way of reorganising your file</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2193-1
00:19:50.040 --> 00:19:55.482
<v Giorgio Ghelli>is that you start from the current file,
you do a table scanner,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2193-2
00:19:55.482 --> 00:19:59.918
<v Giorgio Ghelli>you read every record.
For every record in the file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2193-3
00:19:59.918 --> 00:20:02.597
<v Giorgio Ghelli>you apply the new hash function.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2202-0
00:20:03.797 --> 00:20:07.797
<v Giorgio Ghelli>And you insert that in the corresponding
page of the new file.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2222-0
00:20:10.197 --> 00:20:18.557
<v Giorgio Ghelli>So just the table scan for R in the table
to insert R in the table.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2257-0
00:20:19.637 --> 00:20:27.019
<v Giorgio Ghelli>End of the story, linear post, beautiful.
This is not what you could ever dream of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2257-1
00:20:27.019 --> 00:20:33.512
<v Giorgio Ghelli>doing, because yes, it is linear,
but it is linear in end page or in end</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2257-2
00:20:33.512 --> 00:20:33.957
<v Giorgio Ghelli>rack.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2287-0
00:20:35.037 --> 00:20:39.492
<v Giorgio Ghelli>The number of pages that you have to read
and write is proportional to the number</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2287-1
00:20:39.492 --> 00:20:43.566
<v Giorgio Ghelli>of pages or to the number of the records.
Assuming that you are doing this</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2287-2
00:20:43.566 --> 00:20:46.608
<v Giorgio Ghelli>operation with no data,
we just have two pages of data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2287-3
00:20:46.608 --> 00:20:47.477
<v Giorgio Ghelli>3 pages of data.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2299-0
00:20:48.917 --> 00:20:55.317
<v Giorgio Ghelli>Then how many IO operations you need in
order to perform this algorithm?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2349-0
00:20:59.477 --> 00:21:04.641
<v Giorgio Ghelli>You have to read the input file and that
is good, the end page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2349-1
00:21:04.641 --> 00:21:11.016
<v Giorgio Ghelli>So reading the input file is good because
it is linear in the number of pages,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2349-2
00:21:11.016 --> 00:21:17.471
<v Giorgio Ghelli>which is the best that you can imagine.
The problem is with writing this in the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2349-3
00:21:17.471 --> 00:21:18.197
<v Giorgio Ghelli>new file.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2363-0
00:21:18.997 --> 00:21:22.906
<v Giorgio Ghelli>In order to insert all of these records
in the new file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2363-1
00:21:22.906 --> 00:21:25.717
<v Giorgio Ghelli>you have a course that is linear on what.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2371-0
00:21:27.957 --> 00:21:30.277
<v Giorgio Ghelli>Number of pages or number of frameworks?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2418-0
00:21:31.477 --> 00:21:37.750
<v Giorgio Ghelli>number of records would be under pages if
I could fit the entire output file in</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2418-1
00:21:37.750 --> 00:21:41.592
<v Giorgio Ghelli>buffer.
Then I would do everything in buffer and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2418-2
00:21:41.592 --> 00:21:45.983
<v Giorgio Ghelli>that's easy. But in the general case,
the typical case,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2418-3
00:21:45.983 --> 00:21:51.237
<v Giorgio Ghelli>wherever a buffer that is much,
much smaller, then the output file</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2435-0
00:21:51.637 --> 00:21:55.832
<v Giorgio Ghelli>Then if every page in the output file
contains 100 records,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2435-1
00:21:55.832 --> 00:21:59.397
<v Giorgio Ghelli>I will have to flush that page at least
100 times.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2476-0
00:22:00.757 --> 00:22:06.934
<v Giorgio Ghelli>To reload, write, reload, write, flash.
If I had only one page for the output</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2476-1
00:22:06.934 --> 00:22:11.369
<v Giorgio Ghelli>data, that would be false.
But even if I have 10 pages,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2476-2
00:22:11.369 --> 00:22:16.437
<v Giorgio Ghelli>if the output time is 1000 pages,
that would not have a output.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2493-0
00:22:17.637 --> 00:22:27.178
<v Giorgio Ghelli>So, when we reorganise the hash file,
we use a small trick which is based on</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2493-1
00:22:27.178 --> 00:22:27.797
<v Giorgio Ghelli>sort.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2498-0
00:22:30.117 --> 00:22:32.277
<v Giorgio Ghelli>And with this small trick.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2512-0
00:22:34.477 --> 00:22:40.525
<v Giorgio Ghelli>We first create a heap tile,
a sequential tile that we create very</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2512-1
00:22:40.525 --> 00:22:41.157
<v Giorgio Ghelli>easily.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2540-0
00:22:42.437 --> 00:22:50.560
<v Giorgio Ghelli>Then we sort it,
and finally we create the output. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2540-1
00:22:50.560 --> 00:23:01.637
<v Giorgio Ghelli>is any of you able to imagine what does
this temporary find that I create?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2551-0
00:23:01.957 --> 00:23:08.757
<v Giorgio Ghelli>Sort and use to generate the new page
tile and container.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2580-0
00:23:09.957 --> 00:23:14.152
<v Giorgio Ghelli>So yeah, the input file.
I do a linear scan, linear write, read,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2580-1
00:23:14.152 --> 00:23:18.153
<v Giorgio Ghelli>linear write from this input file to
create a temporary file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2580-2
00:23:18.153 --> 00:23:19.637
<v Giorgio Ghelli>post and page and page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2596-0
00:23:21.557 --> 00:23:26.234
<v Giorgio Ghelli>Now that I have this temporary file,
I sort it according to something that you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2596-1
00:23:26.234 --> 00:23:27.477
<v Giorgio Ghelli>are going to tell me.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2627-0
00:23:29.477 --> 00:23:35.044
<v Giorgio Ghelli>And after I've sorted this file according
to this mysterious value,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2627-1
00:23:35.044 --> 00:23:41.757
<v Giorgio Ghelli>I can find and create the output of the
new text file with just a linear scanner.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2637-0
00:23:42.917 --> 00:23:48.917
<v Giorgio Ghelli>Can you imagine what do I put in the
intermediate file?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2666-0
00:23:53.477 --> 00:23:58.182
<v Giorgio Ghelli>This is something that we do every time
we have to reorganise a tile,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2666-1
00:23:58.182 --> 00:24:01.609
<v Giorgio Ghelli>we play exactly this trick. Every time,
of course,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2666-2
00:24:01.609 --> 00:24:05.037
<v Giorgio Ghelli>what is likely different is the
intermediate tile.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2679-0
00:24:09.957 --> 00:24:15.157
<v Giorgio Ghelli>What would you put into every record that
you put in an intermediate file?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2690-0
00:24:17.637 --> 00:24:22.117
<v Giorgio Ghelli>You would copy the input record and add
what?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2692-0
00:24:25.637 --> 00:24:26.117
<v Giorgio Ghelli>Sorry?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2696-0
00:24:27.637 --> 00:24:29.957
<v Giorgio Ghelli>No, OK, yes.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2745-0
00:24:31.397 --> 00:24:37.105
<v Giorgio Ghelli>For every record in the input file,
you write in the intermediate file the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2745-1
00:24:37.105 --> 00:24:42.813
<v Giorgio Ghelli>value of the new hash function near to
the to the record. New hash record,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2745-2
00:24:42.813 --> 00:24:48.597
<v Giorgio Ghelli>new hash record, new hash record.
This operation has two times and read the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2745-3
00:24:48.597 --> 00:24:51.717
<v Giorgio Ghelli>old file writes equation in the new file.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2792-0
00:24:52.117 --> 00:24:58.027
<v Giorgio Ghelli>By the way, if you are using a disk,
and if your operating system is clever</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2792-1
00:24:58.027 --> 00:25:02.459
<v Giorgio Ghelli>enough, when you write a file,
just in order, like this,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2792-2
00:25:02.459 --> 00:25:07.591
<v Giorgio Ghelli>the disc may be able to use the head of
the disc in a clever way,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2792-3
00:25:07.591 --> 00:25:11.557
<v Giorgio Ghelli>and it sometimes is much faster than just
writing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2808-0
00:25:11.877 --> 00:25:16.677
<v Giorgio Ghelli>In any case, then page and page,
first page. Now,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2808-1
00:25:16.677 --> 00:25:20.037
<v Giorgio Ghelli>you saw the temporary file on what?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2842-0
00:25:21.557 --> 00:25:26.277
<v Giorgio Ghelli>on the hash address.
And now we do a parallel scan of the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2842-1
00:25:26.277 --> 00:25:32.624
<v Giorgio Ghelli>temporary file sorted and the new hash
file until you find the address of the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2842-2
00:25:32.624 --> 00:25:35.797
<v Giorgio Ghelli>first page you write in the first page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2866-0
00:25:36.877 --> 00:25:40.459
<v Giorgio Ghelli>Tap to the second page,
you can tap the buffer and go to the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2866-1
00:25:40.459 --> 00:25:43.571
<v Giorgio Ghelli>second page,
so you just read the essentially do all</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2866-2
00:25:43.571 --> 00:25:46.037
<v Giorgio Ghelli>these operations with two pages of buffer.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2905-0
00:25:47.557 --> 00:25:54.896
<v Giorgio Ghelli>both in the first phase and in the second.
The only expensive part of all this game</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2905-1
00:25:54.896 --> 00:26:01.623
<v Giorgio Ghelli>is when you sort the intermediate file.
So the code is 12 pages to create an</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2905-2
00:26:01.623 --> 00:26:07.039
<v Giorgio Ghelli>intermediate file,
4 pages in order to sort it. You remember,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2905-3
00:26:07.039 --> 00:26:08.437
<v Giorgio Ghelli>sorting takes 4.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2911-0
00:26:10.237 --> 00:26:13.997
<v Giorgio Ghelli>Plus 2 pages to create the.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2913-0
00:26:16.237 --> 00:26:16.917
<v Giorgio Ghelli>Final.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2921-0
00:26:18.437 --> 00:26:23.157
<v Giorgio Ghelli>OK, fine. OK, so in total, in principle,
it is.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2941-0
00:26:28.437 --> 00:26:39.397
<v Giorgio Ghelli>2 + 4 + 2 N pages to the organizing.
Not bad, not bad. Can do much of that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2953-0
00:26:43.077 --> 00:26:47.029
<v Giorgio Ghelli>And do much, much better,
but it's the I don't think you can see</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2953-1
00:26:47.029 --> 00:26:47.637
<v Giorgio Ghelli>that that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2961-0
00:26:51.717 --> 00:26:53.957
<v Giorgio Ghelli>There is a way to make it most.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2966-0
00:26:54.917 --> 00:26:58.637
<v Giorgio Ghelli>1 + 2 + 1.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2979-0
00:27:00.197 --> 00:27:04.301
<v Giorgio Ghelli>The very part, but all this,
which is what every database person will</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/2979-1
00:27:04.301 --> 00:27:04.477
<v Giorgio Ghelli>do.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3003-0
00:27:07.757 --> 00:27:14.338
<v Giorgio Ghelli>What do the database person do in order
to transform this read, write, read,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3003-1
00:27:14.338 --> 00:27:20.064
<v Giorgio Ghelli>write, read, write, read,
write the poster into read, write, read,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3003-2
00:27:20.064 --> 00:27:21.517
<v Giorgio Ghelli>write the poster?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3010-0
00:27:24.037 --> 00:27:25.877
<v Giorgio Ghelli>Ordering the every database person.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3014-0
00:27:29.957 --> 00:27:31.477
<v Giorgio Ghelli>It's called streaming.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3025-0
00:27:33.157 --> 00:27:37.163
<v Giorgio Ghelli>Do you know about streaming?
It's when you have a process that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3025-1
00:27:37.163 --> 00:27:38.117
<v Giorgio Ghelli>generates data.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3034-0
00:27:39.237 --> 00:27:44.117
<v Giorgio Ghelli>and another process that consumes this
data as soon as they are generated.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3041-0
00:27:45.477 --> 00:27:48.997
<v Giorgio Ghelli>Is this process generate the MPs of data?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3056-0
00:27:49.797 --> 00:27:53.477
<v Giorgio Ghelli>It has read and write,
and then it processes,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3056-1
00:27:53.477 --> 00:27:55.717
<v Giorgio Ghelli>but instead of writing here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3087-0
00:27:57.317 --> 00:28:02.278
<v Giorgio Ghelli>I could just pass them to the first phase
of this step, which will not read,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3087-1
00:28:02.278 --> 00:28:05.692
<v Giorgio Ghelli>we just get them.
And then we should derive the gap,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3087-2
00:28:05.692 --> 00:28:10.460
<v Giorgio Ghelli>instead of writing on this step,
it will pass this to the second phase of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3087-3
00:28:10.460 --> 00:28:11.877
<v Giorgio Ghelli>that, the right phase.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3106-0
00:28:13.237 --> 00:28:20.469
<v Giorgio Ghelli>It sounds a little bit magic.
Let's see whether we can make it a little</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3106-1
00:28:20.469 --> 00:28:22.277
<v Giorgio Ghelli>bit more concrete.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3108-0
00:28:23.237 --> 00:28:24.837
<v Giorgio Ghelli>We will see this pattern.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3112-0
00:28:26.517 --> 00:28:28.277
<v Giorgio Ghelli>A lot of times, so maybe...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3119-0
00:28:34.277 --> 00:28:36.677
<v Giorgio Ghelli>I should not insist now too much, but...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3125-0
00:28:43.077 --> 00:28:45.557
<v Giorgio Ghelli>Let us see how...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3155-0
00:28:47.077 --> 00:28:52.968
<v Giorgio Ghelli>Merge soft works. Merge soft, right?
There is one generated,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3155-1
00:28:52.968 --> 00:28:57.797
<v Giorgio Ghelli>there is one all the time in order.
You see that?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3197-0
00:28:58.957 --> 00:29:05.344
<v Giorgio Ghelli>When this page is full, it is flushed,
and hence I'm generating all the results</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3197-1
00:29:05.344 --> 00:29:09.256
<v Giorgio Ghelli>of the first page.
Then this page fill up again,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3197-2
00:29:09.256 --> 00:29:15.403
<v Giorgio Ghelli>and then it generates the second page.
So the result is already streamed out</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3197-3
00:29:15.403 --> 00:29:18.437
<v Giorgio Ghelli>toward the disk, sorted already. So if</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3244-0
00:29:19.397 --> 00:29:25.417
<v Giorgio Ghelli>I am sorting the time to consume the data.
I just want to show them sorted on screen.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3244-1
00:29:25.417 --> 00:29:30.877
<v Giorgio Ghelli>Then this final right is totally useless.
When I hear I can just send you the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3244-2
00:29:30.877 --> 00:29:36.687
<v Giorgio Ghelli>record as they are produced to the screen
or to the printer or to whatever and the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3244-3
00:29:36.687 --> 00:29:38.437
<v Giorgio Ghelli>course goes out to three.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3296-0
00:29:38.917 --> 00:29:44.332
<v Giorgio Ghelli>because the final right is useless
because the final generation is already</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3296-1
00:29:44.332 --> 00:29:47.509
<v Giorgio Ghelli>sorted.
I'm generating the data is not like</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3296-2
00:29:47.509 --> 00:29:51.769
<v Giorgio Ghelli>another approach.
It could be a hash approach where here I</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3296-3
00:29:51.769 --> 00:29:57.256
<v Giorgio Ghelli>allocate the space and then the hash
function I put the record with A here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3296-4
00:29:57.256 --> 00:29:58.917
<v Giorgio Ghelli>the record with Z here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3343-0
00:29:59.157 --> 00:30:05.926
<v Giorgio Ghelli>the record with age here. At the end,
I have a sorted file that I am generating</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3343-1
00:30:05.926 --> 00:30:10.749
<v Giorgio Ghelli>that jumping to useless.
If the generation is streaming,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3343-2
00:30:10.749 --> 00:30:15.318
<v Giorgio Ghelli>if I have a consumer who is okay with
streaming data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3343-3
00:30:15.318 --> 00:30:21.917
<v Giorgio Ghelli>then the consumer does not need to read,
the producer does not need to write.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3392-0
00:30:23.237 --> 00:30:28.241
<v Giorgio Ghelli>Now, who is here the consumer?
The consumer is a piece of code which in</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3392-1
00:30:28.241 --> 00:30:33.107
<v Giorgio Ghelli>principle reads from a sequential file,
page one, page one, page one,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3392-2
00:30:33.107 --> 00:30:37.694
<v Giorgio Ghelli>this is page one, page two, page two,
page two, this is page two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3392-3
00:30:37.694 --> 00:30:42.837
<v Giorgio Ghelli>So the consumer here is perfectly happy
if you give me the record string.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3433-0
00:30:43.157 --> 00:30:47.456
<v Giorgio Ghelli>because the consumer is, yes,
reading on the value,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3433-1
00:30:47.456 --> 00:30:52.829
<v Giorgio Ghelli>but it is reading exactly third head to
tail once in that order.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3433-2
00:30:52.829 --> 00:30:58.864
<v Giorgio Ghelli>So it's perfect for our consumer here,
not to read, but to get a string.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3433-3
00:30:58.864 --> 00:31:02.997
<v Giorgio Ghelli>So instead of four plus two,
I can do 3 plus one.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3439-0
00:31:03.877 --> 00:31:07.037
<v Giorgio Ghelli>I save the writing, I save the reading.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3454-0
00:31:08.597 --> 00:31:13.037
<v Giorgio Ghelli>That's the easy factor.
It is a little bit more complicated to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3454-1
00:31:13.037 --> 00:31:14.517
<v Giorgio Ghelli>observe that exactly.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3458-0
00:31:15.477 --> 00:31:17.797
<v Giorgio Ghelli>The same thing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3463-0
00:31:24.997 --> 00:31:26.517
<v Giorgio Ghelli>May happen here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3503-0
00:31:31.397 --> 00:31:34.968
<v Giorgio Ghelli>Because again, here, when I,
you remember this,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3503-1
00:31:34.968 --> 00:31:40.399
<v Giorgio Ghelli>there is an end page cost for reading,
but how do I read the input data?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3503-2
00:31:40.399 --> 00:31:45.310
<v Giorgio Ghelli>In totally random order,
in whichever order they are in the file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3503-3
00:31:45.310 --> 00:31:46.277
<v Giorgio Ghelli>I don't care.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3517-0
00:31:47.157 --> 00:31:52.597
<v Giorgio Ghelli>I get the data completely out of order.
I just do a table scan of a set of data</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3517-1
00:31:52.597 --> 00:31:53.957
<v Giorgio Ghelli>which is not sorted.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3566-0
00:31:55.317 --> 00:31:59.182
<v Giorgio Ghelli>So I have no requirement on the order of
the input.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3566-1
00:31:59.182 --> 00:32:04.608
<v Giorgio Ghelli>The only thing that I require is that
every record I meet that just one,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3566-2
00:32:04.608 --> 00:32:08.919
<v Giorgio Ghelli>one and exactly one.
You will not give me the same record</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3566-3
00:32:08.919 --> 00:32:13.379
<v Giorgio Ghelli>twice or zero times.
But if you give me all your records in</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3566-4
00:32:13.379 --> 00:32:15.237
<v Giorgio Ghelli>any order, it is my task.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3608-0
00:32:15.477 --> 00:32:21.135
<v Giorgio Ghelli>to take the first 100 records, solve them,
create the first partition,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3608-1
00:32:21.135 --> 00:32:25.836
<v Giorgio Ghelli>second 100 pages, solve them,
create the second partition,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3608-2
00:32:25.836 --> 00:32:30.857
<v Giorgio Ghelli>and so on and so forth.
So this tool works perfectly well with</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3608-3
00:32:30.857 --> 00:32:35.399
<v Giorgio Ghelli>the string input.
I do not need to read the input from a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3608-4
00:32:35.399 --> 00:32:35.797
<v Giorgio Ghelli>side.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3613-0
00:32:36.037 --> 00:32:41.397
<v Giorgio Ghelli>If you give me one record at a time,
I will be totally happy.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3624-0
00:32:43.557 --> 00:32:48.997
<v Giorgio Ghelli>Now,
this phase here can stream its result.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3654-0
00:32:49.877 --> 00:32:54.698
<v Giorgio Ghelli>I get to the first vehicle,
computer is hash, pass it, second vehicle,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3654-1
00:32:54.698 --> 00:32:59.384
<v Giorgio Ghelli>computer is hash, pass it, third vehicle,
computer is hash, pass it,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3654-2
00:32:59.384 --> 00:33:01.557
<v Giorgio Ghelli>so I just read them and pass it.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3655-0
00:33:02.837 --> 00:33:03.317
<v Giorgio Ghelli>1.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3656-0
00:33:04.477 --> 00:33:04.837
<v Giorgio Ghelli>Thank you.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3693-0
00:33:06.037 --> 00:33:11.790
<v Giorgio Ghelli>It does not need to read it,
you just get the result. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3693-1
00:33:11.790 --> 00:33:19.327
<v Giorgio Ghelli>here is not for here the course is just
writing and here the course is just</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3693-2
00:33:19.327 --> 00:33:22.997
<v Giorgio Ghelli>reading. Stream, write, read, stream.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3717-0
00:33:25.877 --> 00:33:30.140
<v Giorgio Ghelli>This real here,
this is fundamental because here I write</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3717-1
00:33:30.140 --> 00:33:35.077
<v Giorgio Ghelli>in this horizontal order,
and then I read that in vertical order.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3768-0
00:33:36.197 --> 00:33:39.786
<v Giorgio Ghelli>Do you see what I mean?
That they read in practical order,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3768-1
00:33:39.786 --> 00:33:43.010
<v Giorgio Ghelli>because first of all,
I need the first page of them,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3768-2
00:33:43.010 --> 00:33:47.633
<v Giorgio Ghelli>but I written in horizontal order. So,
here, the disc is fundamental. Here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3768-3
00:33:47.633 --> 00:33:52.804
<v Giorgio Ghelli>without the disk, I could not screen here,
because receiving an order in a different</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3768-4
00:33:52.804 --> 00:33:55.237
<v Giorgio Ghelli>order, and that's fundamental. But here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3781-0
00:33:55.557 --> 00:34:01.419
<v Giorgio Ghelli>No problem, whatever order is okay. Here,
I am leaving that already sorted from the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3781-1
00:34:01.419 --> 00:34:02.117
<v Giorgio Ghelli>beginning.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3785-0
00:34:03.277 --> 00:34:05.717
<v Giorgio Ghelli>So, this algorithm...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3840-0
00:34:06.477 --> 00:34:09.901
<v Giorgio Ghelli>What you do, typically,
when you organise a file,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3840-1
00:34:09.901 --> 00:34:13.119
<v Giorgio Ghelli>it's always something like this.
First of all,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3840-2
00:34:13.119 --> 00:34:18.528
<v Giorgio Ghelli>you will read and you decide where the
record will go. Then you sort the data,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3840-3
00:34:18.528 --> 00:34:21.883
<v Giorgio Ghelli>the base of where the race will go.
And finally,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3840-4
00:34:21.883 --> 00:34:25.717
<v Giorgio Ghelli>you read the data in that folder so that
you can build.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3845-0
00:34:25.797 --> 00:34:30.037
<v Giorgio Ghelli>There is a file one page at a time,
rather than one of the.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3895-0
00:34:31.637 --> 00:34:36.391
<v Giorgio Ghelli>This approach is a cost,
which is generally speaking, 2 + 8 + 2,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3895-1
00:34:36.391 --> 00:34:41.438
<v Giorgio Ghelli>but if you use a little bit of screening,
it goes down to 1 + 2 + 1.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3895-2
00:34:41.438 --> 00:34:46.265
<v Giorgio Ghelli>So with four and pages,
you can reorganise your hash organisation</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3895-3
00:34:46.265 --> 00:34:51.677
<v Giorgio Ghelli>because it has been quite clever and
because you know about the database.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3932-0
00:34:52.757 --> 00:34:59.489
<v Giorgio Ghelli>So the difference between the databases,
data organisation and main memory</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3932-1
00:34:59.489 --> 00:35:03.529
<v Giorgio Ghelli>organisation is that with data
organization,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3932-2
00:35:03.529 --> 00:35:10.890
<v Giorgio Ghelli>the first thing we think is who that find
a way of reading every page at once and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3932-3
00:35:10.890 --> 00:35:11.877
<v Giorgio Ghelli>of writing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3936-0
00:35:12.077 --> 00:35:13.877
<v Giorgio Ghelli>Everything does at once.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3971-0
00:35:16.757 --> 00:35:22.038
<v Giorgio Ghelli>I will not use the trivial algorithm read,
text, write,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3971-1
00:35:22.038 --> 00:35:27.036
<v Giorgio Ghelli>because in this way I do one write for
every record,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/3971-2
00:35:27.036 --> 00:35:30.997
<v Giorgio Ghelli>but I want to do one write for every page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4019-0
00:35:32.277 --> 00:35:36.423
<v Giorgio Ghelli>Not one.
I do not want to write the same page 100</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4019-1
00:35:36.423 --> 00:35:40.403
<v Giorgio Ghelli>times.
I need to write the same page just once.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4019-2
00:35:40.403 --> 00:35:44.963
<v Giorgio Ghelli>And then a database person,
the first thing that will,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4019-3
00:35:44.963 --> 00:35:51.679
<v Giorgio Ghelli>the first thing that we think is, okay,
I just decorate everything with the page</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4019-4
00:35:51.679 --> 00:35:52.757
<v Giorgio Ghelli>where I want.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4059-0
00:35:52.837 --> 00:35:59.226
<v Giorgio Ghelli>To put that without putting that in the
picture, so I write the one entire page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4059-1
00:35:59.226 --> 00:36:04.353
<v Giorgio Ghelli>and then I will sort it.
It basically will sort the data all the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4059-2
00:36:04.353 --> 00:36:08.060
<v Giorgio Ghelli>time,
they love sorting data because we have a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4059-3
00:36:08.060 --> 00:36:09.637
<v Giorgio Ghelli>very fast algorithm.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4099-0
00:36:10.917 --> 00:36:15.300
<v Giorgio Ghelli>For N page, quite fast,
to N page in the difficult things,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4099-1
00:36:15.300 --> 00:36:20.351
<v Giorgio Ghelli>because the third thing that,
so first thing the database person is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4099-2
00:36:20.351 --> 00:36:25.106
<v Giorgio Ghelli>that I want one operation per page,
not one operation per page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4099-3
00:36:25.106 --> 00:36:29.637
<v Giorgio Ghelli>Second thing is that how can I use a sort
so that I prepare?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4107-0
00:36:29.717 --> 00:36:33.957
<v Giorgio Ghelli>My data, I sort the data,
and then I create them.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4138-0
00:36:35.117 --> 00:36:40.465
<v Giorgio Ghelli>Third thing,
how can I do a pipeline streaming between</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4138-1
00:36:40.465 --> 00:36:47.756
<v Giorgio Ghelli>different phases in order to avoid
creating intermediate things with these</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4138-2
00:36:47.756 --> 00:36:48.437
<v Giorgio Ghelli>people?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4175-0
00:36:50.117 --> 00:36:55.832
<v Giorgio Ghelli>Create the intermediate files only when
there is a need for the intermediate</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4175-1
00:36:55.832 --> 00:37:01.101
<v Giorgio Ghelli>files, which is the situation here.
The files are written in an order,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4175-2
00:37:01.101 --> 00:37:06.147
<v Giorgio Ghelli>and you cannot avoid that.
The files are read in a different order,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4175-3
00:37:06.147 --> 00:37:08.077
<v Giorgio Ghelli>and you cannot avoid that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4220-0
00:37:09.397 --> 00:37:13.306
<v Giorgio Ghelli>So, here, no hope, but here, no need.
They have no need.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4220-1
00:37:13.306 --> 00:37:17.489
<v Giorgio Ghelli>Whenever there is no need,
you create no intermediate files.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4220-2
00:37:17.489 --> 00:37:22.220
<v Giorgio Ghelli>Then you are the first person,
somebody who knows how to use a disk,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4220-3
00:37:22.220 --> 00:37:26.197
<v Giorgio Ghelli>how to use a page,
the device in such a way that you pay.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4224-0
00:37:27.237 --> 00:37:30.277
<v Giorgio Ghelli>Price per page and not per record.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4237-0
00:37:32.677 --> 00:37:35.822
<v Giorgio Ghelli>OK,
and that is all I wanted to tell you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4237-1
00:37:35.822 --> 00:37:38.277
<v Giorgio Ghelli>about static hash organizations.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4243-0
00:37:40.877 --> 00:37:43.357
<v Giorgio Ghelli>And now, let us move to...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4278-0
00:37:46.597 --> 00:37:54.903
<v Giorgio Ghelli>dynamic hashing organization. Now,
dynamic hashing organisation are not as</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4278-1
00:37:54.903 --> 00:38:03.764
<v Giorgio Ghelli>known and as used as one would expect,
because they have some problems that I'm</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4278-2
00:38:03.764 --> 00:38:05.757
<v Giorgio Ghelli>going to show you.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4306-0
00:38:06.837 --> 00:38:13.508
<v Giorgio Ghelli>In the last 50 or 60 years,
literally hundreds of different dynamic</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4306-1
00:38:13.508 --> 00:38:20.277
<v Giorgio Ghelli>organisations have been defined.
I'm going to show you four of them.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4328-0
00:38:22.677 --> 00:38:28.233
<v Giorgio Ghelli>Very fast. First of all,
virtual hash and extendable hash,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4328-1
00:38:28.233 --> 00:38:31.717
<v Giorgio Ghelli>and then linear hash and spiral hash.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4359-0
00:38:32.997 --> 00:38:38.250
<v Giorgio Ghelli>Please use some auxiliary data structure
with map indexes, etc.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4359-1
00:38:38.250 --> 00:38:42.436
<v Giorgio Ghelli>This one do not need any auxiliary data
structure.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4359-2
00:38:42.436 --> 00:38:47.197
<v Giorgio Ghelli>Let's start with the virtual hash,
which is one of the...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4379-0
00:38:49.957 --> 00:39:00.597
<v Giorgio Ghelli>most natural way of organising a hash.
The basic idea with virtual hash is that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4403-0
00:39:02.917 --> 00:39:10.090
<v Giorgio Ghelli>The obvious thing that you may do in
order to be a dynamic caching</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4403-1
00:39:10.090 --> 00:39:17.477
<v Giorgio Ghelli>organisation is this: well,
you keep your data up to a density of...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4406-0
00:39:18.997 --> 00:39:21.557
<v Giorgio Ghelli>One 150%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4450-0
00:39:22.917 --> 00:39:30.195
<v Giorgio Ghelli>One 150% means that every page would be
OK with just one overflow page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4450-1
00:39:30.195 --> 00:39:37.775
<v Giorgio Ghelli>so that worst case cost is around 2,
so until you are at 150% that you are</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4450-2
00:39:37.775 --> 00:39:41.717
<v Giorgio Ghelli>putting up. Once you arrive around 160,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4472-0
00:39:42.517 --> 00:39:49.388
<v Giorgio Ghelli>You split, you duplicate the space,
you multiply the space exactly by two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4472-1
00:39:49.388 --> 00:39:53.877
<v Giorgio Ghelli>So you go down from 160 to 80%.
Are you with me?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4518-0
00:39:55.317 --> 00:39:58.842
<v Giorgio Ghelli>If you have any doubt,
this is not what is here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4518-1
00:39:58.842 --> 00:40:04.310
<v Giorgio Ghelli>Is that basically here the first thing
that will come to every person mind.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4518-2
00:40:04.310 --> 00:40:09.850
<v Giorgio Ghelli>What will come to every person mind is,
since your organisation posts a lot,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4518-3
00:40:09.850 --> 00:40:13.807
<v Giorgio Ghelli>do not do that every time you implement
of 10% to 20%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4554-0
00:40:14.837 --> 00:40:22.028
<v Giorgio Ghelli>It's reasonable to do that every time you
need to double the space.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4554-1
00:40:22.028 --> 00:40:27.950
<v Giorgio Ghelli>Why double is reasonable? Because 1.
5 is not that bad.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4554-2
00:40:27.950 --> 00:40:33.237
<v Giorgio Ghelli>They're all immediately over, you have 1.
6, 0.8.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4601-0
00:40:33.477 --> 00:40:37.700
<v Giorgio Ghelli>you double the space,
divide the density by two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4601-1
00:40:37.700 --> 00:40:44.767
<v Giorgio Ghelli>So the density goes down from 100 and 1.
6 to 0.8. 1.6 was a lot, but reasonable.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4601-2
00:40:44.767 --> 00:40:50.110
<v Giorgio Ghelli>0.8 is a little bit smaller,
but still reasonable. After all,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4601-3
00:40:50.110 --> 00:40:52.437
<v Giorgio Ghelli>it's just the 50% overhead.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4634-0
00:40:52.837 --> 00:40:57.744
<v Giorgio Ghelli>So, doubling is a good idea.
It is a good idea for two reasons.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4634-1
00:40:57.744 --> 00:41:01.807
<v Giorgio Ghelli>First of all,
because they do not do that too often.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4634-2
00:41:01.807 --> 00:41:05.870
<v Giorgio Ghelli>Second reason is it because if you double
the space,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4634-3
00:41:05.870 --> 00:41:09.397
<v Giorgio Ghelli>then you do not use it to do this trick
here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4656-0
00:41:10.757 --> 00:41:17.832
<v Giorgio Ghelli>You can do something which is much,
much simpler if you double the space.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4656-1
00:41:17.832 --> 00:41:22.517
<v Giorgio Ghelli>Well, if you were computing,
assume that M is 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4675-0
00:41:23.717 --> 00:41:29.984
<v Giorgio Ghelli>Then everything was modulo divided by 7
was 5,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4675-1
00:41:29.984 --> 00:41:36.917
<v Giorgio Ghelli>then its modulo divided by 14 is either 5
or 5 + 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4714-0
00:41:40.917 --> 00:41:48.726
<v Giorgio Ghelli>Anything whose module was one, modulo 7,
like 1, 8, 15, 22.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4714-1
00:41:48.726 --> 00:41:57.835
<v Giorgio Ghelli>When you compute the modulo 14,
it's either 1 or is 8. One goes to 1,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4714-2
00:41:57.835 --> 00:41:59.397
<v Giorgio Ghelli>8 goes to 8.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4754-0
00:41:59.717 --> 00:42:04.760
<v Giorgio Ghelli>Fifteen goes to 1, 15 + 7 goes to 8,
it's clear. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4754-1
00:42:04.760 --> 00:42:10.564
<v Giorgio Ghelli>this idea of multiplying exactly by two
is very interesting,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4754-2
00:42:10.564 --> 00:42:15.607
<v Giorgio Ghelli>because now you can split the data page
by page. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4754-3
00:42:15.607 --> 00:42:18.557
<v Giorgio Ghelli>this is what you do in a stack.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4796-0
00:42:19.037 --> 00:42:23.749
<v Giorgio Ghelli>organization,
where you have the policy that you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4796-1
00:42:23.749 --> 00:42:30.385
<v Giorgio Ghelli>reorganise your data only when the size
is not divided by the times.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4796-2
00:42:30.385 --> 00:42:37.597
<v Giorgio Ghelli>The dynamic idea is that, okay,
let us do the same, but not on the entire.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4832-0
00:42:37.917 --> 00:42:44.362
<v Giorgio Ghelli>Let's do this page by page,
so that when a page is too full,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4832-1
00:42:44.362 --> 00:42:49.116
<v Giorgio Ghelli>I use Modulo 14.
When a page is still small,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4832-2
00:42:49.116 --> 00:42:57.357
<v Giorgio Ghelli>I use Modulo 7. So for every page,
I decide which modulo I will use, 7 or 14.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4869-0
00:43:00.077 --> 00:43:07.088
<v Giorgio Ghelli>How do I do that? I put,
I allocate infinitely many pages</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4869-1
00:43:07.088 --> 00:43:13.011
<v Giorgio Ghelli>virtually,
but I put one bit in all and only the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4869-2
00:43:13.011 --> 00:43:16.637
<v Giorgio Ghelli>pages that I'm actually using.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4891-0
00:43:18.957 --> 00:43:25.597
<v Giorgio Ghelli>And 0 in those that which I'm not using.
When I at the beginning, this is my file.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4891-1
00:43:25.597 --> 00:43:28.557
<v Giorgio Ghelli>I'm using all and only the pages now.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4897-0
00:43:29.677 --> 00:43:32.557
<v Giorgio Ghelli>I get a new page, which is module 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4900-0
00:43:33.837 --> 00:43:35.197
<v Giorgio Ghelli>Easy fiber.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4912-0
00:43:36.237 --> 00:43:40.797
<v Giorgio Ghelli>Then, this page here is too full,
and then identificate exactly this page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4962-0
00:43:42.397 --> 00:43:47.134
<v Giorgio Ghelli>So, what I do,
for all of the data in this page and only</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4962-1
00:43:47.134 --> 00:43:53.117
<v Giorgio Ghelli>in this page, I recomputed the modulo,
modulo 14, rather than modulo 7,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4962-2
00:43:53.117 --> 00:43:59.101
<v Giorgio Ghelli>and then some of them end up in page 5,
some of them end up in page 12,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4962-3
00:43:59.101 --> 00:44:01.677
<v Giorgio Ghelli>and now I do not have any copy.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4963-0
00:44:01.757 --> 00:44:02.157
<v Giorgio Ghelli>Done.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4983-0
00:44:03.437 --> 00:44:10.525
<v Giorgio Ghelli>All the other pages are computed still in
Modulo Five and remain as they are,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/4983-1
00:44:10.525 --> 00:44:12.797
<v Giorgio Ghelli>and in the virtual space.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5032-0
00:44:14.077 --> 00:44:19.123
<v Giorgio Ghelli>In this bit map that indicates which page
are in user,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5032-1
00:44:19.123 --> 00:44:25.086
<v Giorgio Ghelli>I will have one on five and seven,
but all other pages are zero.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5032-2
00:44:25.086 --> 00:44:30.132
<v Giorgio Ghelli>I assume that this allocation of pages
has a 0 poster.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5032-3
00:44:30.132 --> 00:44:35.637
<v Giorgio Ghelli>I only pay to allocate page 12,
but all of this is virtual.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5039-0
00:44:36.077 --> 00:44:39.637
<v Giorgio Ghelli>I assume that these are white space is
that in the.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5087-0
00:44:41.237 --> 00:44:46.826
<v Giorgio Ghelli>directory that goes nothing or since the
directory for these pages is in main</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5087-1
00:44:46.826 --> 00:44:49.907
<v Giorgio Ghelli>memory,
I just put another to the physical</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5087-2
00:44:49.907 --> 00:44:53.632
<v Giorgio Ghelli>address of all these pages.
And then in the bitmap,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5087-3
00:44:53.632 --> 00:44:58.361
<v Giorgio Ghelli>I indicate the 0 here and one here.
The bitmap is in main memory,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5087-4
00:44:58.361 --> 00:45:00.797
<v Giorgio Ghelli>so bitmap manipulation has a zero.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5114-0
00:45:01.437 --> 00:45:06.658
<v Giorgio Ghelli>So where are we now?
Now we are in a situation where when a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5114-1
00:45:06.658 --> 00:45:12.052
<v Giorgio Ghelli>page has been doubled,
you find both the page and its doubled</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5114-2
00:45:12.052 --> 00:45:13.357
<v Giorgio Ghelli>with a one bit.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5127-0
00:45:14.197 --> 00:45:18.881
<v Giorgio Ghelli>When a page has not been doubled,
you find the one in the page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5127-1
00:45:18.881 --> 00:45:20.637
<v Giorgio Ghelli>but the zero is doubled.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5169-0
00:45:24.557 --> 00:45:30.888
<v Giorgio Ghelli>Notice that I may decide now, if I want,
I need it down on page 12 without</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5169-1
00:45:30.888 --> 00:45:36.796
<v Giorgio Ghelli>doubling anything else. So it may have 12,
which is doubled twice, 5,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5169-2
00:45:36.796 --> 00:45:43.465
<v Giorgio Ghelli>which has been doubled twice in a sensor,
and six that has never been doubled,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5169-3
00:45:43.465 --> 00:45:45.237
<v Giorgio Ghelli>not a problem at all.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5170-0
00:45:45.357 --> 00:45:45.677
<v Giorgio Ghelli>Okay.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5171-0
00:45:46.957 --> 00:45:47.517
<v Giorgio Ghelli>Nour.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5226-0
00:45:48.957 --> 00:45:54.618
<v Giorgio Ghelli>The point is,
how do I find a record in such a chaotic</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5226-1
00:45:54.618 --> 00:46:02.338
<v Giorgio Ghelli>data structure? Well, for some key,
I must compute the modulo 14 from some</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5226-2
00:46:02.338 --> 00:46:10.366
<v Giorgio Ghelli>other keys, I must compute the modulo 7.
How do I know when you give me a key</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5226-3
00:46:10.366 --> 00:46:13.557
<v Giorgio Ghelli>whether I should use modulo 14?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5264-0
00:46:13.637 --> 00:46:19.664
<v Giorgio Ghelli>for modulus 7. But even worse,
how do we know if it is modulus 28,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5264-1
00:46:19.664 --> 00:46:25.692
<v Giorgio Ghelli>modulus 14, or modulus 7?
Because maybe some painted in the double</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5264-2
00:46:25.692 --> 00:46:30.100
<v Giorgio Ghelli>after 28,
some other apartment is still up to 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5264-3
00:46:30.100 --> 00:46:35.677
<v Giorgio Ghelli>How do we do that? It's very simple.
I start with the biggest</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5268-0
00:46:35.757 --> 00:46:38.677
<v Giorgio Ghelli>Use the exponent.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5299-0
00:46:39.597 --> 00:46:44.762
<v Giorgio Ghelli>Currently,
I have some pages which are 7 * 2 to the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5299-1
00:46:44.762 --> 00:46:51.517
<v Giorgio Ghelli>zero, 7 * 2 to the one, 7 * 2 to the. OK,
so the big exponent is 2.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5307-0
00:46:52.957 --> 00:46:56.397
<v Giorgio Ghelli>So I start with that. I compute modular.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5312-0
00:46:59.077 --> 00:47:00.477
<v Giorgio Ghelli>Seven times too little.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5360-0
00:47:01.637 --> 00:47:09.433
<v Giorgio Ghelli>So I have now H0, which is 7, H1,
which is 14, H2, which is 28.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5360-1
00:47:09.433 --> 00:47:17.595
<v Giorgio Ghelli>I compute the modulo 28.
If the bitmap in the page where I land is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5360-2
00:47:17.595 --> 00:47:20.397
<v Giorgio Ghelli>1, this is it, is that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5403-0
00:47:20.797 --> 00:47:28.991
<v Giorgio Ghelli>If the bitmap of the page where I left is
0, well, I repeat the operation with one.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5403-1
00:47:28.991 --> 00:47:34.649
<v Giorgio Ghelli>Or if you like, I try 28,
I repeat the operation with 14.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5403-2
00:47:34.649 --> 00:47:39.917
<v Giorgio Ghelli>And if I fail with 14,
I repeat the operation with 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5417-0
00:47:40.557 --> 00:47:47.906
<v Giorgio Ghelli>How much does this operation cost? Zero,
because it happens completely in main</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5417-1
00:47:47.906 --> 00:47:48.557
<v Giorgio Ghelli>memory.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5435-0
00:47:49.997 --> 00:47:55.717
<v Giorgio Ghelli>And by the way,
the number of loops that I do here is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5435-1
00:47:55.717 --> 00:47:57.517
<v Giorgio Ghelli>just logarithmic.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5452-0
00:47:58.397 --> 00:48:02.748
<v Giorgio Ghelli>So, in many cases,
I do not need to do a lot of loops.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5452-1
00:48:02.748 --> 00:48:05.517
<v Giorgio Ghelli>I go down from 1500, 200 fifty-six.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5494-0
00:48:07.037 --> 00:48:12.426
<v Giorgio Ghelli>Hundred and twenty-eight, sixty-four,
thirty-two, sixty-eight, 4, two, one,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5494-1
00:48:12.426 --> 00:48:16.255
<v Giorgio Ghelli>zero. I can take that number of the steps,
but in it,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5494-2
00:48:16.255 --> 00:48:21.999
<v Giorgio Ghelli>and then most of the time there is not
such a big difference between the maximum</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5494-3
00:48:21.999 --> 00:48:25.757
<v Giorgio Ghelli>value and the minimum value. Usually,
there are two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5502-0
00:48:26.237 --> 00:48:30.957
<v Giorgio Ghelli>That, with the legal also,
so if the biggest...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5543-0
00:48:32.477 --> 00:48:36.764
<v Giorgio Ghelli>One is 8,
the smallest one is typically 7 or 6.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5543-1
00:48:36.764 --> 00:48:42.837
<v Giorgio Ghelli>So just need to do two or three attempts.
But even if they were 10,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5543-2
00:48:42.837 --> 00:48:49.357
<v Giorgio Ghelli>all of this happen in main memory.
So this fact, this trick of doubling,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5587-0
00:48:51.117 --> 00:48:58.568
<v Giorgio Ghelli>That's the pages that need to be down and
leave the other pages alone as they are.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5587-1
00:48:58.568 --> 00:49:05.122
<v Giorgio Ghelli>It solved the problems just by doing the
search, starting to the record.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5587-2
00:49:05.122 --> 00:49:10.957
<v Giorgio Ghelli>And if you find the zero,
you move down one level until you find</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5603-0
00:49:11.197 --> 00:49:15.459
<v Giorgio Ghelli>Find that, once you find the one,
then either the rail is there,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5603-1
00:49:15.459 --> 00:49:19.197
<v Giorgio Ghelli>or the label is up in the top in the
chain of the stock.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5608-0
00:49:21.437 --> 00:49:23.997
<v Giorgio Ghelli>Notice that when you do AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5633-0
00:49:26.557 --> 00:49:32.726
<v Giorgio Ghelli>Two modular 28, two modular 28,
page two has never been doubled,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5633-1
00:49:32.726 --> 00:49:36.237
<v Giorgio Ghelli>but two modular 28, it gives you one.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5685-0
00:49:37.357 --> 00:49:43.799
<v Giorgio Ghelli>So even if you have computed module 28,
then you arrive straight to the correct</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5685-1
00:49:43.799 --> 00:49:48.792
<v Giorgio Ghelli>result. Of course, if you do 9 modulo 28,
then you find zero,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5685-2
00:49:48.792 --> 00:49:55.637
<v Giorgio Ghelli>and then you do modulo 14, you find zero,
and then you do modulo 7 and you find one.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5738-0
00:49:56.717 --> 00:50:00.699
<v Giorgio Ghelli>So in the worst,
the case that you really need to go down</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5738-1
00:50:00.699 --> 00:50:06.396
<v Giorgio Ghelli>from 28 to 14, 7. But when you are lucky,
even if two is currently hatched with 7,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5738-2
00:50:06.396 --> 00:50:10.241
<v Giorgio Ghelli>if you do 2 modular 28,
you still get the right result.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5738-3
00:50:10.241 --> 00:50:13.947
<v Giorgio Ghelli>As soon as you get the one,
that is the right result.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5738-4
00:50:13.947 --> 00:50:17.517
<v Giorgio Ghelli>Even if you got the one just because you
are lucky.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5755-0
00:50:17.717 --> 00:50:25.876
<v Giorgio Ghelli>And not because this was the right module
to try, so this is a very,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5755-1
00:50:25.876 --> 00:50:28.477
<v Giorgio Ghelli>very clever technique.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5761-0
00:50:29.517 --> 00:50:32.157
<v Giorgio Ghelli>Which are the problems of this?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5800-0
00:50:34.717 --> 00:50:41.885
<v Giorgio Ghelli>But the first problem is that it never
ever produces any overflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5800-1
00:50:41.885 --> 00:50:47.876
<v Giorgio Ghelli>It is a bit eager as soon as one page is
100% one full,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5800-2
00:50:47.876 --> 00:50:52.797
<v Giorgio Ghelli>you it immediately split that pages into
two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5803-0
00:50:54.077 --> 00:50:55.197
<v Giorgio Ghelli>That's not a good idea.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5818-0
00:50:56.317 --> 00:51:03.357
<v Giorgio Ghelli>Because that means that every page start
is live only at 50%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5827-0
00:51:04.557 --> 00:51:07.917
<v Giorgio Ghelli>Then it goes up until 100%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5839-0
00:51:09.037 --> 00:51:14.477
<v Giorgio Ghelli>And then it generates 2 pages,
and each of them with the 50% of.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5873-0
00:51:17.197 --> 00:51:24.894
<v Giorgio Ghelli>That means that on average,
every page is full adjusted at 75%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5873-1
00:51:24.894 --> 00:51:31.869
<v Giorgio Ghelli>which is at density,
which is a bit pathetic. 85 is nice,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5873-2
00:51:31.869 --> 00:51:35.837
<v Giorgio Ghelli>80 is borderline, 50 is horrible.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5887-0
00:51:36.717 --> 00:51:43.357
<v Giorgio Ghelli>But 75 on average is frankly a little bit
below what we would hope.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5927-0
00:51:44.717 --> 00:51:50.891
<v Giorgio Ghelli>That is the biggest problem.
The biggest problem of this approach is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5927-1
00:51:50.891 --> 00:51:56.170
<v Giorgio Ghelli>exactly what at first sight looks like
the best advantage.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5927-2
00:51:56.170 --> 00:52:03.597
<v Giorgio Ghelli>The first thing you see this is a, oh wow,
zero overflow at all. That's fantastic.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5967-0
00:52:03.837 --> 00:52:09.449
<v Giorgio Ghelli>A hash technique with zero overflow. Yeah,
that's zero overflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5967-1
00:52:09.449 --> 00:52:16.702
<v Giorgio Ghelli>But the cost is that the average density
is 75, which is not bad for zero overflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5967-2
00:52:16.702 --> 00:52:20.501
<v Giorgio Ghelli>I mean,
getting zero overflow guaranteed is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5967-3
00:52:20.501 --> 00:52:23.437
<v Giorgio Ghelli>something, but 75 is a little bit.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5970-0
00:52:23.517 --> 00:52:23.757
<v Giorgio Ghelli>The.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5987-0
00:52:25.037 --> 00:52:31.048
<v Giorgio Ghelli>Not very pleasant.
The second problem of this technique is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/5987-1
00:52:31.048 --> 00:52:35.837
<v Giorgio Ghelli>that you need to keep a bitmap in main
memory.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6029-0
00:52:37.557 --> 00:52:41.992
<v Giorgio Ghelli>When the file is not big,
that's not a big problem.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6029-1
00:52:41.992 --> 00:52:47.706
<v Giorgio Ghelli>When the file is very big,
this big map may begin getting a little</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6029-2
00:52:47.706 --> 00:52:52.396
<v Giorgio Ghelli>bit too big,
and it would like not to be thought to be</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6029-3
00:52:52.396 --> 00:52:55.637
<v Giorgio Ghelli>that in main. But as soon as anywhere.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6075-0
00:52:56.237 --> 00:53:01.746
<v Giorgio Ghelli>you start not keeping this main memory,
well then the performance of the system</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6075-1
00:53:01.746 --> 00:53:06.567
<v Giorgio Ghelli>degrades down to two accesses for every
reader, minimum two accesses,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6075-2
00:53:06.567 --> 00:53:09.941
<v Giorgio Ghelli>one to read the bitmap and one to read
the data.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6075-3
00:53:09.941 --> 00:53:15.037
<v Giorgio Ghelli>But if you have to go through this loop
of three times, you are in today.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6118-0
00:53:15.197 --> 00:53:20.624
<v Giorgio Ghelli>of the three pages of the big meta,
which is not very good idea.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6118-1
00:53:20.624 --> 00:53:24.548
<v Giorgio Ghelli>So this approach is frankly quite
interesting,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6118-2
00:53:24.548 --> 00:53:31.395
<v Giorgio Ghelli>but the density is not very satisfactory
and the amount of the data that you need</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6118-3
00:53:31.395 --> 00:53:34.317
<v Giorgio Ghelli>to keep in main memory can sometime</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6157-0
00:53:34.557 --> 00:53:38.873
<v Giorgio Ghelli>be a product.
Now we take the minutes break and we will</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6157-1
00:53:38.873 --> 00:53:44.962
<v Giorgio Ghelli>see a couple of other approaches to
dynamic hashing, none of which is perfect,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6157-2
00:53:44.962 --> 00:53:50.049
<v Giorgio Ghelli>which is the reason why people do not use
dynamic hash very much.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6157-3
00:53:50.049 --> 00:53:53.517
<v Giorgio Ghelli>But each of them have different features.
So</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6162-0
00:53:54.077 --> 00:53:56.557
<v Giorgio Ghelli>Now, with the, let's have a break.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6175-0
00:54:14.957 --> 00:54:16.717
<v Giorgio Ghelli>Vika.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6184-0
00:54:18.477 --> 00:54:23.197
<v Giorgio Ghelli>Just a moment,
I realised that I had to stop sharing.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6186-0
00:54:25.117 --> 00:54:25.837
<v Giorgio Ghelli>And...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6328-0
01:12:10.317 --> 01:12:10.437
<v Giorgio Ghelli>That.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6333-0
01:12:26.797 --> 01:12:26.957
<v Giorgio Ghelli>That.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6336-0
01:12:29.837 --> 01:12:30.317
<v Giorgio Ghelli>So.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6337-0
01:12:30.357 --> 01:12:31.037
<v Giorgio Ghelli>AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6366-0
01:12:33.957 --> 01:12:45.612
<v Giorgio Ghelli>What we've seen is called virtual hash,
is the best known method for dynamic</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6366-1
01:12:45.612 --> 01:12:52.877
<v Giorgio Ghelli>hashing.
Simple variation is called extendable.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6379-0
01:12:53.037 --> 01:13:00.367
<v Giorgio Ghelli>Ash, where we do exactly the same thing,
but instead of using the bitmap,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6379-1
01:13:00.367 --> 01:13:01.357
<v Giorgio Ghelli>we use AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6385-0
01:13:03.597 --> 01:13:06.557
<v Giorgio Ghelli>Hash table essentially at the beginning.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6431-0
01:13:09.757 --> 01:13:14.286
<v Giorgio Ghelli>We have an entry for zero, one, two,
three, 4, 5, 6.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6431-1
01:13:14.286 --> 01:13:19.327
<v Giorgio Ghelli>When we duplicate the page,
we duplicate the size of this,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6431-2
01:13:19.327 --> 01:13:25.992
<v Giorgio Ghelli>and then both different different go to
page 0. This and this go to page one,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6431-3
01:13:25.992 --> 01:13:29.837
<v Giorgio Ghelli>but for page 5,
this goes here and then goes</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6462-0
01:13:29.997 --> 01:13:34.387
<v Giorgio Ghelli>there.
So we play the same game that we use to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6462-1
01:13:34.387 --> 01:13:38.497
<v Giorgio Ghelli>play with bits.
We play that with an index.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6462-2
01:13:38.497 --> 01:13:44.288
<v Giorgio Ghelli>But apart from this,
the fundamental features are exactly the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6462-3
01:13:44.288 --> 01:13:47.837
<v Giorgio Ghelli>same. That is the fact that every page</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6510-0
01:13:50.117 --> 01:13:56.189
<v Giorgio Ghelli>is duplicated only on need.
So position 0 and 0 plus 7 may be at the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6510-1
01:13:56.189 --> 01:14:00.853
<v Giorgio Ghelli>same page,
but position 1 and 1 plus 7 will point to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6510-2
01:14:00.853 --> 01:14:06.309
<v Giorgio Ghelli>two different pages.
I will not give you the details of this.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6510-3
01:14:06.309 --> 01:14:12.557
<v Giorgio Ghelli>What I really want you to remember is
that it's just a variation where</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6516-0
01:14:12.797 --> 01:14:17.517
<v Giorgio Ghelli>Instead of the bitmap,
we use an index structure.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6538-0
01:14:18.717 --> 01:14:25.375
<v Giorgio Ghelli>but everything else is equal.
So it has exactly the same advantages and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6538-1
01:14:25.375 --> 01:14:28.797
<v Giorgio Ghelli>disadvantages of the virtual passion.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6583-0
01:14:29.757 --> 01:14:35.367
<v Giorgio Ghelli>Same problem that is that this data
structure occupies space,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6583-1
01:14:35.367 --> 01:14:40.524
<v Giorgio Ghelli>the bitmap or this,
where these occupy in principle less</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6583-2
01:14:40.524 --> 01:14:45.953
<v Giorgio Ghelli>space than the bitmap,
but the bitmap is maybe simpler than</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6583-3
01:14:45.953 --> 01:14:50.477
<v Giorgio Ghelli>compressed.
So if you keep the bitmap compressed,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6598-0
01:14:50.637 --> 01:14:56.201
<v Giorgio Ghelli>Then it may occupy lesser space than this,
so let's say that we have a data</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6598-1
01:14:56.201 --> 01:14:58.397
<v Giorgio Ghelli>structure that more or lesser.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6653-0
01:14:59.437 --> 01:15:05.920
<v Giorgio Ghelli>Since it represents essentially the same
information that is represented by the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6653-1
01:15:05.920 --> 01:15:11.674
<v Giorgio Ghelli>deep map, if you compress both of them,
you end up with the same size.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6653-2
01:15:11.674 --> 01:15:16.618
<v Giorgio Ghelli>The problem of density is identical.
All pages begin at 50%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6653-3
01:15:16.618 --> 01:15:21.237
<v Giorgio Ghelli>when they arrive at 100%,
they are split and occupy 50%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6663-0
01:15:21.917 --> 01:15:26.667
<v Giorgio Ghelli>So,
it's just we can regard that as a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6663-1
01:15:26.667 --> 01:15:28.917
<v Giorgio Ghelli>variation of that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6672-0
01:15:31.077 --> 01:15:34.397
<v Giorgio Ghelli>Does any of you have a charger with USB?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6680-0
01:15:35.677 --> 01:15:38.717
<v Giorgio Ghelli>A charger for computers with USB plug.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6699-0
01:15:40.117 --> 01:15:43.669
<v Giorgio Ghelli>ESBC, sorry, ESBC, I meant. Okay,
thank you, May you.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6699-1
01:15:43.669 --> 01:15:48.077
<v Giorgio Ghelli>So we are sure that I'm not run out of
power. I forgot my charger.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6710-0
01:15:51.317 --> 01:15:55.340
<v Giorgio Ghelli>Thank you.
So now we try a different approach</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6710-1
01:15:55.340 --> 01:15:56.477
<v Giorgio Ghelli>instead of...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6713-0
01:16:00.477 --> 01:16:02.157
<v Giorgio Ghelli>Adding AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6740-0
01:16:03.517 --> 01:16:08.425
<v Giorgio Ghelli>Bitmap,
in order to keep track of which pages we</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6740-1
01:16:08.425 --> 01:16:16.237
<v Giorgio Ghelli>split, we just split the first page,
and then the second, and then the third.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6751-0
01:16:17.917 --> 01:16:24.877
<v Giorgio Ghelli>So we do not need any data structure.
This is called linear hash.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6796-0
01:16:26.317 --> 01:16:31.737
<v Giorgio Ghelli>So, in the linear hash,
you have a pointer P that remembers which</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6796-1
01:16:31.737 --> 01:16:36.911
<v Giorgio Ghelli>pages have been split.
Whatever is before P has been splitted,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6796-2
01:16:36.911 --> 01:16:42.003
<v Giorgio Ghelli>whatever is after P has not been splitted.
So, no bit matter,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6796-3
01:16:42.003 --> 01:16:44.877
<v Giorgio Ghelli>just one index left splitted right.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6798-0
01:16:44.957 --> 01:16:47.037
<v Giorgio Ghelli>Nour stick, so...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6807-0
01:16:50.397 --> 01:16:56.237
<v Giorgio Ghelli>You insert a new recorder, you have a...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6844-0
01:16:57.677 --> 01:17:02.327
<v Giorgio Ghelli>overflow.
What you do is anytime you have a new</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6844-1
01:17:02.327 --> 01:17:07.170
<v Giorgio Ghelli>overflow,
instead of editing one page in order to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6844-2
01:17:07.170 --> 01:17:12.692
<v Giorgio Ghelli>solve that overflow,
you just add one page and where the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6844-3
01:17:12.692 --> 01:17:13.757
<v Giorgio Ghelli>pointer is.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6889-0
01:17:15.837 --> 01:17:20.152
<v Giorgio Ghelli>The pointer is there,
you duplicate that page instead of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6889-1
01:17:20.152 --> 01:17:25.376
<v Giorgio Ghelli>duplicating the final page.
What is the advantage of this technique?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6889-2
01:17:25.376 --> 01:17:28.708
<v Giorgio Ghelli>Well,
the basic advantage is that you don't</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6889-3
01:17:28.708 --> 01:17:33.402
<v Giorgio Ghelli>need any bit method.
You just need one pointer. We precisely,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6889-4
01:17:33.402 --> 01:17:35.597
<v Giorgio Ghelli>it has been split every page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6920-0
01:17:35.797 --> 01:17:41.229
<v Giorgio Ghelli>which you find after the number six,
and every page you find from zero to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6920-1
01:17:41.229 --> 01:17:46.001
<v Giorgio Ghelli>three. So when you move,
this page is split, this page is split,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6920-2
01:17:46.001 --> 01:17:48.717
<v Giorgio Ghelli>this in the middle are not explained.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6925-0
01:17:50.077 --> 01:17:52.797
<v Giorgio Ghelli>So, Jonathan, one point, there is enough.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6944-0
01:17:54.157 --> 01:17:58.764
<v Giorgio Ghelli>Well, of course,
there is a problem that I'm not splitting</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6944-1
01:17:58.764 --> 01:18:02.277
<v Giorgio Ghelli>on demand.
I am splitting in a random place,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6944-2
01:18:02.277 --> 01:18:03.917
<v Giorgio Ghelli>which is at the time.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6978-0
01:18:06.877 --> 01:18:13.595
<v Giorgio Ghelli>While this is of course less interesting
than just splitting the pages that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6978-1
01:18:13.595 --> 01:18:20.047
<v Giorgio Ghelli>overflow, it has also one advantage.
The basic idea with the linear hash</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6978-2
01:18:20.047 --> 01:18:24.997
<v Giorgio Ghelli>approach is that you decide the average
loading factor.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/6979-0
01:18:25.077 --> 01:18:25.357
<v Giorgio Ghelli>Start.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7023-0
01:18:27.317 --> 01:18:33.484
<v Giorgio Ghelli>While in the other approach,
you are forced to split every page that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7023-1
01:18:33.484 --> 01:18:40.188
<v Giorgio Ghelli>arrives up to 100. In this approach,
you can just keep a count of how many</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7023-2
01:18:40.188 --> 01:18:45.282
<v Giorgio Ghelli>labels do you have.
So you keep the count of the current</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7023-3
01:18:45.282 --> 01:18:45.997
<v Giorgio Ghelli>density.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7071-0
01:18:46.157 --> 01:18:52.017
<v Giorgio Ghelli>And whenever the current density goes
over a threshold of 90%, for example,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7071-1
01:18:52.017 --> 01:18:55.872
<v Giorgio Ghelli>you add this page to be that below the
threshold.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7071-2
01:18:55.872 --> 01:19:00.420
<v Giorgio Ghelli>So you have complete control of the
density that you like.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7071-3
01:19:00.420 --> 01:19:06.357
<v Giorgio Ghelli>You can keep the system at the average
density of 90 average density of 880.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7113-0
01:19:06.437 --> 01:19:12.683
<v Giorgio Ghelli>You decide that. Here, in this version,
the decision is that every time you have</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7113-1
01:19:12.683 --> 01:19:17.618
<v Giorgio Ghelli>one new overflow, you add a page.
But this is just one example.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7113-2
01:19:17.618 --> 01:19:23.401
<v Giorgio Ghelli>You can use any criteria you like.
You can use the density as a criterion,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7113-3
01:19:23.401 --> 01:19:25.637
<v Giorgio Ghelli>the total number of overflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7156-0
01:19:25.877 --> 01:19:31.283
<v Giorgio Ghelli>When the total number of overflow is
about 10%, you have the new page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7156-1
01:19:31.283 --> 01:19:34.481
<v Giorgio Ghelli>Of course,
adding any page may not reduce</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7156-2
01:19:34.481 --> 01:19:39.659
<v Giorgio Ghelli>immediately the overflow,
but that means that you will add a second</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7156-3
01:19:39.659 --> 01:19:44.608
<v Giorgio Ghelli>page or third page until you bring the
overflow below the level.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7156-4
01:19:44.608 --> 01:19:47.197
<v Giorgio Ghelli>You are totally free to move this.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7164-0
01:19:47.397 --> 01:19:50.797
<v Giorgio Ghelli>When you want,
this is a policy instead of being a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7164-1
01:19:50.797 --> 01:19:51.597
<v Giorgio Ghelli>publication.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7186-0
01:19:54.717 --> 01:20:01.568
<v Giorgio Ghelli>And then how do you find a record?
In this case, it's very, very simple.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7186-1
01:20:01.568 --> 01:20:04.477
<v Giorgio Ghelli>You just compute the module 14.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7200-0
01:20:05.557 --> 01:20:12.157
<v Giorgio Ghelli>And if the result is greater than the
biggest split page, you divide it.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7256-0
01:20:13.597 --> 01:20:17.320
<v Giorgio Ghelli>or whatever.
You just have to try two different edges.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7256-1
01:20:17.320 --> 01:20:20.908
<v Giorgio Ghelli>So to say,
you can go from the smaller to the bigger</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7256-2
01:20:20.908 --> 01:20:26.120
<v Giorgio Ghelli>or from the bigger to the smaller.
So every time you need more space and you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7256-3
01:20:26.120 --> 01:20:30.520
<v Giorgio Ghelli>move this part and eventually when this
part will go right here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7256-4
01:20:30.520 --> 01:20:32.957
<v Giorgio Ghelli>you will split this couple of edges.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7264-0
01:20:32.997 --> 01:20:37.757
<v Giorgio Ghelli>which then will be distributed in two
pages and you will recover the outflow.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7325-0
01:20:42.557 --> 01:20:47.719
<v Giorgio Ghelli>So eventually, at some point,
this overflow here will disappear and be</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7325-1
01:20:47.719 --> 01:20:52.808
<v Giorgio Ghelli>split there. But in any case,
you will typically, with this approach,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7325-2
01:20:52.808 --> 01:20:57.243
<v Giorgio Ghelli>always have some overflow.
So while in the dynamic approach,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7325-3
01:20:57.243 --> 01:21:01.024
<v Giorgio Ghelli>you are guaranteed that every access only
goes one,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7325-4
01:21:01.024 --> 01:21:04.077
<v Giorgio Ghelli>here accessing may cost either one or two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7328-0
01:21:04.237 --> 01:21:06.477
<v Giorgio Ghelli>And it is you who decide that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7336-0
01:21:07.677 --> 01:21:12.957
<v Giorgio Ghelli>the balance between cost and benefit.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7382-0
01:21:22.557 --> 01:21:27.257
<v Giorgio Ghelli>OK, essentially,
one possibility is that you compute using</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7382-1
01:21:27.257 --> 01:21:31.240
<v Giorgio Ghelli>the smaller.
If the result is in the area that is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7382-2
01:21:31.240 --> 01:21:37.454
<v Giorgio Ghelli>smaller than P, then you use the H1I plus.
If the result is the biggest area,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7382-3
01:21:37.454 --> 01:21:41.357
<v Giorgio Ghelli>then you use this much easier than the
previous.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7404-0
01:21:41.837 --> 01:21:48.058
<v Giorgio Ghelli>version. Now,
linear hash is interesting because it</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7404-1
01:21:48.058 --> 01:21:55.117
<v Giorgio Ghelli>allows you to decide that they balance
between density and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7447-0
01:22:02.237 --> 01:22:07.322
<v Giorgio Ghelli>Between density and overflow,
more density and more overflow or less</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7447-1
01:22:07.322 --> 01:22:12.924
<v Giorgio Ghelli>overflow, but then less density,
which means higher cost of tables cabinet.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7447-2
01:22:12.924 --> 01:22:17.419
<v Giorgio Ghelli>That's a strong point.
Another strong point is the fact that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7447-3
01:22:17.419 --> 01:22:20.957
<v Giorgio Ghelli>they do not need any additional data
structure.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7466-0
01:22:21.197 --> 01:22:25.704
<v Giorgio Ghelli>to keep in the buffer,
the buffer space is precious.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7466-1
01:22:25.704 --> 01:22:31.997
<v Giorgio Ghelli>We do not want to fill it up with lots of
data structure, but it has a...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7471-0
01:22:33.917 --> 01:22:35.917
<v Giorgio Ghelli>The following problem.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7496-0
01:22:38.237 --> 01:22:43.325
<v Giorgio Ghelli>At the beginning,
you have decided that your ideal level is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7496-1
01:22:43.325 --> 01:22:49.176
<v Giorgio Ghelli>80%. And so at the beginning,
you distribute your data so that every</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7496-2
01:22:49.176 --> 01:22:50.957
<v Giorgio Ghelli>page is 80%. But now,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7509-0
01:22:53.837 --> 01:22:59.277
<v Giorgio Ghelli>The moment when you split that one page,
this page goes down to 40%.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7556-0
01:23:00.557 --> 01:23:07.163
<v Giorgio Ghelli>and you create a new one which is down to
40% and all the other are bigger than 80.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7556-1
01:23:07.163 --> 01:23:11.960
<v Giorgio Ghelli>So you imagine that you have a
distribution which is of 80%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7556-2
01:23:11.960 --> 01:23:17.072
<v Giorgio Ghelli>but in reality do not.
You have two distributions co-existing at</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7556-3
01:23:17.072 --> 01:23:21.397
<v Giorgio Ghelli>the same time,
one which is bad because it's too poor.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7575-0
01:23:21.917 --> 01:23:26.237
<v Giorgio Ghelli>And when you read this page in memory,
you get 60% of crap.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7575-1
01:23:26.237 --> 01:23:31.997
<v Giorgio Ghelli>And one which is bad because it is too
high, is too near to the overflow limit.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7613-0
01:23:33.277 --> 01:23:39.095
<v Giorgio Ghelli>And when you go on,
then the situation always is like that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7613-1
01:23:39.095 --> 01:23:47.143
<v Giorgio Ghelli>You will have always some pages which are
bigger and some pages which are smaller,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7613-2
01:23:47.143 --> 01:23:51.797
<v Giorgio Ghelli>but not a single page that is really 80%.
Yeah,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7628-0
01:23:52.157 --> 01:23:54.570
<v Giorgio Ghelli>In this area,
you have quite a lot of them,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7628-1
01:23:54.570 --> 01:23:58.957
<v Giorgio Ghelli>but after a while you end up with half a
page, too big, half a page, too small.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7676-0
01:23:59.997 --> 01:24:03.581
<v Giorgio Ghelli>So, yeah,
you can decide the average density of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7676-1
01:24:03.581 --> 01:24:07.538
<v Giorgio Ghelli>your pages,
but you do not really decide the average</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7676-2
01:24:07.538 --> 01:24:12.242
<v Giorgio Ghelli>density of your pages.
You decide in some moment in time, yes,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7676-3
01:24:12.242 --> 01:24:16.872
<v Giorgio Ghelli>but as soon as you begin splitting for a
long period of time,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7676-4
01:24:16.872 --> 01:24:20.157
<v Giorgio Ghelli>you will have a very strange
distributions.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7690-0
01:24:21.277 --> 01:24:27.625
<v Giorgio Ghelli>Non-optimal because you have overflow,
not non-optimal because you have too much</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7690-1
01:24:27.625 --> 01:24:28.957
<v Giorgio Ghelli>joke in the page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7728-0
01:24:30.037 --> 01:24:36.921
<v Giorgio Ghelli>So, the basic idea that has been explored,
and which is called is to have an</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7728-1
01:24:36.921 --> 01:24:41.659
<v Giorgio Ghelli>exponential,
use an exponential function in order to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7728-2
01:24:41.659 --> 01:24:46.666
<v Giorgio Ghelli>distribute the key,
so that the first page has a double</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7728-3
01:24:46.666 --> 01:24:49.437
<v Giorgio Ghelli>probability than the last page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7776-0
01:24:49.597 --> 01:24:54.275
<v Giorgio Ghelli>or be on the bin inside the target of
this hash function.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7776-1
01:24:54.275 --> 01:24:59.195
<v Giorgio Ghelli>It's very easy to define,
just using an exponent in the hash</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7776-2
01:24:59.195 --> 01:25:02.825
<v Giorgio Ghelli>function and doing that with a
distribution.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7776-3
01:25:02.825 --> 01:25:08.794
<v Giorgio Ghelli>What is the reason why we like a
distribution like this better than that?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7776-4
01:25:08.794 --> 01:25:09.197
<v Giorgio Ghelli>Well,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7784-0
01:25:09.837 --> 01:25:13.917
<v Giorgio Ghelli>This is better than that, frankly,
but what happens after a moment?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7835-0
01:25:15.117 --> 01:25:21.097
<v Giorgio Ghelli>is this. Once I split this here,
this is just half. Once it split this,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7835-1
01:25:21.097 --> 01:25:25.831
<v Giorgio Ghelli>this is just half.
And if you look at this like this and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7835-2
01:25:25.831 --> 01:25:32.143
<v Giorgio Ghelli>that that, or like this and that that,
you always have the same exponential</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7835-3
01:25:32.143 --> 01:25:36.877
<v Giorgio Ghelli>distribution in the density of the
figures all the time.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7871-0
01:25:36.997 --> 01:25:41.009
<v Giorgio Ghelli>While here you have a jump jumping up and
down,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7871-1
01:25:41.009 --> 01:25:45.271
<v Giorgio Ghelli>here you always have the exponential
distribution.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7871-2
01:25:45.271 --> 01:25:50.369
<v Giorgio Ghelli>What is the advantage of the exponential
distribution? Well,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7871-3
01:25:50.369 --> 01:25:56.637
<v Giorgio Ghelli>the advantage is that here half of the
piece are too small, a lot of junk.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7918-0
01:25:57.117 --> 01:26:02.556
<v Giorgio Ghelli>Half of the pages are too big. Here,
the biggest page is as big as this.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7918-1
01:26:02.556 --> 01:26:06.654
<v Giorgio Ghelli>The smallest page is as small as this.
So yes, indeed,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7918-2
01:26:06.654 --> 01:26:12.614
<v Giorgio Ghelli>here I have a couple of pages which are
too big and a couple of pages which are</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7918-3
01:26:12.614 --> 01:26:16.637
<v Giorgio Ghelli>too small. But here, the 50% of the pages,
so to say,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7959-0
01:26:16.677 --> 01:26:22.423
<v Giorgio Ghelli>which live in this intermediate space,
which is totally unoccupied there. Here,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7959-1
01:26:22.423 --> 01:26:27.953
<v Giorgio Ghelli>every page has a bad density. Here,
half of the pages in any moment that you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7959-2
01:26:27.953 --> 01:26:33.986
<v Giorgio Ghelli>have a half of the pages with that quite
reasonable density, not far in the object.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7959-3
01:26:33.986 --> 01:26:35.997
<v Giorgio Ghelli>And of course, another half.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7976-0
01:26:36.117 --> 01:26:40.017
<v Giorgio Ghelli>the another 25% of the pages which are
too big,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7976-1
01:26:40.017 --> 01:26:43.917
<v Giorgio Ghelli>and the 25% of the pages which are too
smaller.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/7978-0
01:26:45.037 --> 01:26:46.717
<v Giorgio Ghelli>But you have...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8006-0
01:26:48.157 --> 01:26:52.919
<v Giorgio Ghelli>a good quality of pages,
which are good enough.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8006-1
01:26:52.919 --> 01:26:57.680
<v Giorgio Ghelli>So the exponential or spiral hashing
technique,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8006-2
01:26:57.680 --> 01:27:03.037
<v Giorgio Ghelli>it's kind of the best possible choice.
You have no...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8047-0
01:27:07.277 --> 01:27:12.883
<v Giorgio Ghelli>No data structure,
full control of the average density,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8047-1
01:27:12.883 --> 01:27:17.587
<v Giorgio Ghelli>you decide which will be your average
density,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8047-2
01:27:17.587 --> 01:27:25.695
<v Giorgio Ghelli>and then you also have a reasonable hope
that 50% of your pages are not that far</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8047-3
01:27:25.695 --> 01:27:27.397
<v Giorgio Ghelli>from the average.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8087-0
01:27:27.757 --> 01:27:31.694
<v Giorgio Ghelli>density. What do I mean not that far?
Well,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8087-1
01:27:31.694 --> 01:27:37.958
<v Giorgio Ghelli>I mean in the order of 50% more or 50%
less than the average density.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8087-2
01:27:37.958 --> 01:27:44.400
<v Giorgio Ghelli>So if the other density is 80,
you have 50% that will be between 90 and</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8087-3
01:27:44.400 --> 01:27:46.637
<v Giorgio Ghelli>70, which is good enough.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8088-0
01:27:46.677 --> 01:27:46.877
<v Giorgio Ghelli>The.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8115-0
01:27:48.037 --> 01:27:54.969
<v Giorgio Ghelli>While here, if the average is 80,
you have a lot of pages which are more</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8115-1
01:27:54.969 --> 01:27:59.433
<v Giorgio Ghelli>than 80,
let's say 120 and the other which are</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8115-2
01:27:59.433 --> 01:28:00.477
<v Giorgio Ghelli>half of 60.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8137-0
01:28:01.837 --> 01:28:06.416
<v Giorgio Ghelli>So, that's really every page is bad. Here,
half of the page are OK,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8137-1
01:28:06.416 --> 01:28:09.783
<v Giorgio Ghelli>half of the page are frankly a little bit
better,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8137-2
01:28:09.783 --> 01:28:12.477
<v Giorgio Ghelli>near to the extreme than to the average.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8163-0
01:28:13.997 --> 01:28:19.972
<v Giorgio Ghelli>As you see,
all these techniques that I described in</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8163-1
01:28:19.972 --> 01:28:27.186
<v Giorgio Ghelli>the last hour are fully dynamic.
You never need any form of the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8163-2
01:28:27.186 --> 01:28:28.877
<v Giorgio Ghelli>reorganization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8177-0
01:28:31.277 --> 01:28:38.717
<v Giorgio Ghelli>And then they have the other point is
that none of these technique is perfect.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8198-0
01:28:41.437 --> 01:28:46.959
<v Giorgio Ghelli>Let's be less optimistic.
None of these techniques is really</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8198-1
01:28:46.959 --> 01:28:51.757
<v Giorgio Ghelli>satisfactory.
All of them have some serious problem.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8199-0
01:28:53.117 --> 01:28:53.597
<v Giorgio Ghelli>The.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8206-0
01:28:55.597 --> 01:29:00.157
<v Giorgio Ghelli>Virtual technique, virtual techniques.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8248-0
01:29:01.117 --> 01:29:06.376
<v Giorgio Ghelli>have an average density of 75%,
which is frankly too little,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8248-1
01:29:06.376 --> 01:29:10.859
<v Giorgio Ghelli>and they occupy quite a lot of space in
the buffer.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8248-2
01:29:10.859 --> 01:29:16.118
<v Giorgio Ghelli>The linear hash function gives you
control over the density,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8248-3
01:29:16.118 --> 01:29:19.997
<v Giorgio Ghelli>but still in practise it only has the
pages.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8270-0
01:29:20.037 --> 01:29:27.209
<v Giorgio Ghelli>which are either too full or too empty.
The spiral attention is a little bit</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8270-1
01:29:27.209 --> 01:29:32.797
<v Giorgio Ghelli>better, but also in this case,
you have half of your pages.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8293-0
01:29:39.637 --> 01:29:48.186
<v Giorgio Ghelli>That have the had in satisfactory feed
factor and only half that are good enough</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8293-1
01:29:48.186 --> 01:29:53.357
<v Giorgio Ghelli>that start the problem.
So the sum of them when.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8297-0
01:29:54.557 --> 01:29:56.877
<v Giorgio Ghelli>We say that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8300-0
01:30:01.597 --> 01:30:03.117
<v Giorgio Ghelli>The static.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8345-0
01:30:04.237 --> 01:30:10.026
<v Giorgio Ghelli>Or the sorry, the organisation is static.
That's not the precise.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8345-1
01:30:10.026 --> 01:30:16.691
<v Giorgio Ghelli>We could say that the static organisation
is static, and this is a problem.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8345-2
01:30:16.691 --> 01:30:21.866
<v Giorgio Ghelli>The dynamic organization,
some dynamic organisation exist,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8345-3
01:30:21.866 --> 01:30:23.357
<v Giorgio Ghelli>but none of them.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8354-0
01:30:23.797 --> 01:30:29.917
<v Giorgio Ghelli>is completely satisfactory because they
have all of them that make a...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8355-0
01:30:31.317 --> 01:30:31.757
<v Giorgio Ghelli>Amine.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8389-0
01:30:33.277 --> 01:30:41.720
<v Giorgio Ghelli>very uneven use of the page space.
There is no dynamic organisation that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8389-1
01:30:41.720 --> 01:30:50.048
<v Giorgio Ghelli>uses all the pages exactly the same,
or the pages where I would not say</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8389-2
01:30:50.048 --> 01:30:52.477
<v Giorgio Ghelli>exactly, but at least</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8430-0
01:30:52.957 --> 01:30:57.724
<v Giorgio Ghelli>Similar enough,
even if the spiral is the best of all,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8430-1
01:30:57.724 --> 01:31:01.797
<v Giorgio Ghelli>as far as this burst the problem is
concerned,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8430-2
01:31:01.797 --> 01:31:07.084
<v Giorgio Ghelli>even this spiral organisation indicates
as the extreme page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8430-3
01:31:07.084 --> 01:31:11.677
<v Giorgio Ghelli>which is exactly the half of the other
extreme page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8470-0
01:31:12.197 --> 01:31:16.998
<v Giorgio Ghelli>which is frankly not very satisfactory.
You remember,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8470-1
01:31:16.998 --> 01:31:23.311
<v Giorgio Ghelli>we have found pretty much the same
problem with the dynamic sequential</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8470-2
01:31:23.311 --> 01:31:27.400
<v Giorgio Ghelli>organization.
But with the dynamic sequential</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8470-3
01:31:27.400 --> 01:31:32.290
<v Giorgio Ghelli>organization,
we had this trick of merging a page with</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8470-4
01:31:32.290 --> 01:31:32.557
<v Giorgio Ghelli>two</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8477-0
01:31:32.637 --> 01:31:36.877
<v Giorgio Ghelli>More pages or splitting 2 pages in order
to create the three.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8521-0
01:31:39.597 --> 01:31:45.525
<v Giorgio Ghelli>That's much better.
If you wait when 2 consecutive pages are</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8521-1
01:31:45.525 --> 01:31:52.618
<v Giorgio Ghelli>both cooler before producing 3,
you go from 66% minimum to 100% maximum.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8521-2
01:31:52.618 --> 01:31:57.477
<v Giorgio Ghelli>The average is 83,
which we regard as acceptable.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8558-0
01:31:58.157 --> 01:32:02.025
<v Giorgio Ghelli>Here,
it's hard to find a way to apply to play</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8558-1
01:32:02.025 --> 01:32:06.303
<v Giorgio Ghelli>the same trick. Here,
you go really from 100 to 50,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8558-2
01:32:06.303 --> 01:32:12.969
<v Giorgio Ghelli>and then it's a little bit unpleasant.
Even if it was to take the average of all</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8558-3
01:32:12.969 --> 01:32:15.437
<v Giorgio Ghelli>of these, probably you will...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8567-0
01:32:16.397 --> 01:32:21.117
<v Giorgio Ghelli>Go not far from the eighty-three percent
that one would like to.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8569-0
01:32:22.397 --> 01:32:23.117
<v Giorgio Ghelli>To have that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8578-0
01:32:24.197 --> 01:32:29.037
<v Giorgio Ghelli>OK,
and that's all about hash organization.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8579-0
01:32:30.317 --> 01:32:30.797
<v Giorgio Ghelli>So...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8604-0
01:32:31.597 --> 01:32:37.612
<v Giorgio Ghelli>We have seen a heap organisation and
sequential, we've seen hash. The finally,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8604-1
01:32:37.612 --> 01:32:42.637
<v Giorgio Ghelli>the final organisation that we are going
to describe is Beatrice.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8611-0
01:33:01.997 --> 01:33:02.557
<v Giorgio Ghelli>So.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8653-0
01:33:03.677 --> 01:33:09.001
<v Giorgio Ghelli>I think that you all have seen B-trees
already in some other calls.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8653-1
01:33:09.001 --> 01:33:15.422
<v Giorgio Ghelli>Raise your hand if you have seen B-trees
already. EB star, B-plat, any variation.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8653-2
01:33:15.422 --> 01:33:19.650
<v Giorgio Ghelli>OK, almost everybody,
but we have a couple of person.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8653-3
01:33:19.650 --> 01:33:23.800
<v Giorgio Ghelli>In any case,
we are going to pretend that you do not</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8653-4
01:33:23.800 --> 01:33:25.757
<v Giorgio Ghelli>know and repeat anything.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8655-0
01:33:26.157 --> 01:33:26.637
<v Giorgio Ghelli>So.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8711-0
01:33:31.637 --> 01:33:36.144
<v Giorgio Ghelli>For having three,
we say that the tree has order five if</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8711-1
01:33:36.144 --> 01:33:42.787
<v Giorgio Ghelli>every node has at the most five children.
We have trees where every node has a same</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8711-2
01:33:42.787 --> 01:33:47.136
<v Giorgio Ghelli>number of children.
Other trees where every node has a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8711-3
01:33:47.136 --> 01:33:52.197
<v Giorgio Ghelli>maximum number of children.
B-trees are in the second category.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8723-0
01:33:52.397 --> 01:33:57.725
<v Giorgio Ghelli>And they are characterised by in order
and find out how many children every node</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8723-1
01:33:57.725 --> 01:33:58.317
<v Giorgio Ghelli>may have.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8774-0
01:34:01.957 --> 01:34:06.698
<v Giorgio Ghelli>For every node in the tree,
we say that it is a first level,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8774-1
01:34:06.698 --> 01:34:12.605
<v Giorgio Ghelli>if it is the root, second level,
if it is a child of the root, third level,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8774-2
01:34:12.605 --> 01:34:17.889
<v Giorgio Ghelli>if it is a child of a child,
and the hate is the maximum level. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8774-3
01:34:17.889 --> 01:34:22.397
<v Giorgio Ghelli>actually, as hate is free,
if it has a root intermediate.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8807-0
01:34:22.557 --> 01:34:29.121
<v Giorgio Ghelli>child. And finally,
we see the trees are perfectly balanced</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8807-1
01:34:29.121 --> 01:34:37.216
<v Giorgio Ghelli>when all of its leaves are at the same
level and it is balanced where the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8807-2
01:34:37.216 --> 01:34:42.357
<v Giorgio Ghelli>maximum difference of levels between
leaves is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8830-0
01:34:42.557 --> 01:34:47.757
<v Giorgio Ghelli>Wow, as we will see,
a B-tree is perfectly balanced;</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8830-1
01:34:47.757 --> 01:34:54.037
<v Giorgio Ghelli>all of its leaves are at the same level,
but you know that, OK.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8879-0
01:34:55.437 --> 01:35:02.305
<v Giorgio Ghelli>So the B-tree is can be described
essentially as a way of storing a binary</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8879-1
01:35:02.305 --> 01:35:09.265
<v Giorgio Ghelli>balanced tree into pages on a disk.
So if you had a binary search tree that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8879-2
01:35:09.265 --> 01:35:16.591
<v Giorgio Ghelli>is perfectly balanced like this one,
you remember this, the binary search tree,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8879-3
01:35:16.591 --> 01:35:16.957
<v Giorgio Ghelli>yes?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8912-0
01:35:17.117 --> 01:35:24.664
<v Giorgio Ghelli>You don't, you have never seen that.
A search tree is a tree where all the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8912-1
01:35:24.664 --> 01:35:31.607
<v Giorgio Ghelli>data in the leaves are sorted.
So here you have the smallest values,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8912-2
01:35:31.607 --> 01:35:36.437
<v Giorgio Ghelli>and here you have the biggest values.
And every</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8913-0
01:35:36.717 --> 01:35:37.397
<v Giorgio Ghelli>AA.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8972-0
01:35:38.557 --> 01:35:41.464
<v Giorgio Ghelli>data in an intermediate tree is
intermediate.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8972-1
01:35:41.464 --> 01:35:45.572
<v Giorgio Ghelli>So this is smaller than everything is
here, and this, and sorry,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8972-2
01:35:45.572 --> 01:35:49.364
<v Giorgio Ghelli>it is bigger than everything is here and
smaller than that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8972-3
01:35:49.364 --> 01:35:53.851
<v Giorgio Ghelli>So if you want to read all the value in
order, it is smaller, smaller,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/8972-4
01:35:53.851 --> 01:35:58.717
<v Giorgio Ghelli>smaller than this, and this, this, this,
this, this, this, that, that, this.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9012-0
01:35:59.037 --> 01:36:03.944
<v Giorgio Ghelli>and so on, so forth. So,
whenever you want to add a new record,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9012-1
01:36:03.944 --> 01:36:09.770
<v Giorgio Ghelli>you just compare, it's smaller, go there,
it's bigger, go there. And hence,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9012-2
01:36:09.770 --> 01:36:15.827
<v Giorgio Ghelli>you need the number of comparisons that
is logarithmic in the number of weeks.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9012-3
01:36:15.827 --> 01:36:18.357
<v Giorgio Ghelli>You need a number of comparisons.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9017-0
01:36:18.557 --> 01:36:22.797
<v Giorgio Ghelli>which is just the depth of the tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9065-0
01:36:24.437 --> 01:36:30.649
<v Giorgio Ghelli>A tree search tree is a very,
very efficient data structure in order to</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9065-1
01:36:30.649 --> 01:36:37.034
<v Giorgio Ghelli>keep a collection sorted and finding a
value, given the value of its key,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9065-2
01:36:37.034 --> 01:36:44.023
<v Giorgio Ghelli>provided that it is reasonably balanced,
that all the leaves are more or less at</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9065-3
01:36:44.023 --> 01:36:45.317
<v Giorgio Ghelli>the same level.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9112-0
01:36:46.157 --> 01:36:50.915
<v Giorgio Ghelli>If it is incredibly unbalanced,
very skewed, so that you have the root,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9112-1
01:36:50.915 --> 01:36:55.012
<v Giorgio Ghelli>nothing on the left,
then node on the line, node on the left,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9112-2
01:36:55.012 --> 01:36:59.241
<v Giorgio Ghelli>node on the left, node on the left, etc.
At the end of the day,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9112-3
01:36:59.241 --> 01:37:04.197
<v Giorgio Ghelli>the depth may be linear in the size of
the tree rather than look arithmic.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9160-0
01:37:04.317 --> 01:37:10.220
<v Giorgio Ghelli>and hence the quality of a search tree is
given by how balanced is a tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9160-1
01:37:10.220 --> 01:37:15.651
<v Giorgio Ghelli>Well balanced, excellent quality,
very unbalanced, horrible quality.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9160-2
01:37:15.651 --> 01:37:22.263
<v Giorgio Ghelli>This is called a search tree because you
can use that box to keep your data sorted,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9160-3
01:37:22.263 --> 01:37:26.277
<v Giorgio Ghelli>but most importantly to search inside of
the tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9198-0
01:37:26.397 --> 01:37:32.552
<v Giorgio Ghelli>with a logarithmic number of compares of
the data you have. Now,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9198-1
01:37:32.552 --> 01:37:40.127
<v Giorgio Ghelli>assume you want to store this on disk.
The most reasonable way of doing this is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9198-2
01:37:40.127 --> 01:37:45.997
<v Giorgio Ghelli>how many nodes I can put in a page.
Let's say that this is 7.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9207-0
01:37:46.237 --> 01:37:51.437
<v Giorgio Ghelli>Okay,
then I put all this in just one root page.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9256-0
01:37:52.877 --> 01:37:58.456
<v Giorgio Ghelli>So, 7 is equal to 1, two, three level. So,
it will do the first three level in a</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9256-1
01:37:58.456 --> 01:38:01.556
<v Giorgio Ghelli>page,
second group of three level in a page,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9256-2
01:38:01.556 --> 01:38:06.240
<v Giorgio Ghelli>in a page, in a page, because that source.
So, you keep a locality,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9256-3
01:38:06.240 --> 01:38:11.682
<v Giorgio Ghelli>you have all the nodes that you want to
look at together in the same page. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9256-4
01:38:11.682 --> 01:38:13.197
<v Giorgio Ghelli>at the end of the day,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9257-0
01:38:13.437 --> 01:38:14.157
<v Giorgio Ghelli>Ifa.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9276-0
01:38:15.357 --> 01:38:21.928
<v Giorgio Ghelli>You can fit 7 nodes per page,
then every level will have seven more</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9276-1
01:38:21.928 --> 01:38:25.117
<v Giorgio Ghelli>children than the previous level.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9283-0
01:38:26.237 --> 01:38:29.597
<v Giorgio Ghelli>You have a son out of seven, and Panza.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9304-0
01:38:33.437 --> 01:38:37.154
<v Giorgio Ghelli>And then,
so you need a number of levels which is</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9304-1
01:38:37.154 --> 01:38:41.837
<v Giorgio Ghelli>logarithm in base 7.
That is essentially the idea of a B-tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9316-0
01:38:42.997 --> 01:38:48.140
<v Giorgio Ghelli>Let's put the compressed two or three
level of the binary tree together in just</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9316-1
01:38:48.140 --> 01:38:48.397
<v Giorgio Ghelli>one.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9359-0
01:38:49.557 --> 01:38:54.459
<v Giorgio Ghelli>So, by definition,
it is a perfectly balanced search tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9359-1
01:38:54.459 --> 01:39:01.356
<v Giorgio Ghelli>Keeping a binary tree perfectly balanced
is very difficult because you can do that</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9359-2
01:39:01.356 --> 01:39:07.837
<v Giorgio Ghelli>only when the number of nodes is a power
of 2 minus 1. Otherwise, you cannot.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9389-0
01:39:08.397 --> 01:39:12.120
<v Giorgio Ghelli>But if instead of having the tree
perfectly binary,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9389-1
01:39:12.120 --> 01:39:17.061
<v Giorgio Ghelli>you keep the tree with a variable number
of children at every level,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9389-2
01:39:17.061 --> 01:39:22.717
<v Giorgio Ghelli>then you can keep it perfectly balanced
if you want, which is what we want. So</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9431-0
01:39:24.197 --> 01:39:31.752
<v Giorgio Ghelli>A B-tree may be represented like this.
Assume that I have a set of records where</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9431-1
01:39:31.752 --> 01:39:36.975
<v Giorgio Ghelli>every record,
this record has a key whose values 2 plus</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9431-2
01:39:36.975 --> 01:39:42.291
<v Giorgio Ghelli>something else.
The star means plus all the other fields</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9431-3
01:39:42.291 --> 01:39:43.597
<v Giorgio Ghelli>in the record.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9474-0
01:39:44.317 --> 01:39:50.313
<v Giorgio Ghelli>OK, in the balance tree,
I work exactly like in the search tree.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9474-1
01:39:50.313 --> 01:39:56.031
<v Giorgio Ghelli>I put the record 10 here,
all the record smaller on the left,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9474-2
01:39:56.031 --> 01:40:01.381
<v Giorgio Ghelli>all those that are immediately bigger
here, then here 17,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9474-3
01:40:01.381 --> 01:40:04.517
<v Giorgio Ghelli>here everything between 17 and 23.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9483-0
01:40:04.637 --> 01:40:10.477
<v Giorgio Ghelli>Here, 33, I will see between 30 and 30,
I will see above 30.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9531-0
01:40:11.557 --> 01:40:14.916
<v Giorgio Ghelli>So,
this is how a big tree looks after you</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9531-1
01:40:14.916 --> 01:40:20.775
<v Giorgio Ghelli>have started building it up. As you see,
we have the following properties.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9531-2
01:40:20.775 --> 01:40:25.618
<v Giorgio Ghelli>First property, sort.
If you navigate like this, like father,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9531-3
01:40:25.618 --> 01:40:31.399
<v Giorgio Ghelli>this father, this father, this father,
you get all your equal each order.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9531-4
01:40:31.399 --> 01:40:33.117
<v Giorgio Ghelli>Second property, sort.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9576-0
01:40:33.277 --> 01:40:39.524
<v Giorgio Ghelli>If you want to search for a record,
you just need to read this in main memory.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9576-1
01:40:39.524 --> 01:40:43.320
<v Giorgio Ghelli>At 0 cost,
you find the pointer looking for 20.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9576-2
01:40:43.320 --> 01:40:48.223
<v Giorgio Ghelli>The pointer for 20 is here.
Zero cost happens in main memory.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9576-3
01:40:48.223 --> 01:40:50.437
<v Giorgio Ghelli>And then I read the chapter.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9594-0
01:40:51.437 --> 01:40:54.808
<v Giorgio Ghelli>I,
and then I repeat until I arrive to the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9594-1
01:40:54.808 --> 01:40:58.571
<v Giorgio Ghelli>leaves.
How many pages must I read the depth of</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9594-2
01:40:58.571 --> 01:40:59.277
<v Giorgio Ghelli>the tree?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9607-0
01:41:00.157 --> 01:41:05.621
<v Giorgio Ghelli>That's the two, just the two pages;
that's four, just one, two, three,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9607-1
01:41:05.621 --> 01:41:06.237
<v Giorgio Ghelli>4 pages.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9652-0
01:41:07.757 --> 01:41:16.063
<v Giorgio Ghelli>The other property of the K of the B3 is
that every page is full at least at the</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9652-1
01:41:16.063 --> 01:41:20.575
<v Giorgio Ghelli>50% of its capacity. How can this be?
Well,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9652-2
01:41:20.575 --> 01:41:26.317
<v Giorgio Ghelli>if you have two pages that are smaller,
you merge them.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9662-0
01:41:27.357 --> 01:41:32.717
<v Giorgio Ghelli>If you have one page smaller, one bigger,
you rebalance them, so much is quicker.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9674-0
01:41:33.877 --> 01:41:38.557
<v Giorgio Ghelli>And whenever a page become a 101%,
you split it into two.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9724-0
01:41:39.597 --> 01:41:45.026
<v Giorgio Ghelli>And of course, when you split the page,
you bring one or more,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9724-1
01:41:45.026 --> 01:41:49.334
<v Giorgio Ghelli>and when the root is too big,
you split them. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9724-2
01:41:49.334 --> 01:41:54.418
<v Giorgio Ghelli>the rule is that every page is always
between 50 and 100%,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9724-3
01:41:54.418 --> 01:42:00.277
<v Giorgio Ghelli>with the only exception of the root,
because when I create a new...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9744-0
01:42:00.797 --> 01:42:06.227
<v Giorgio Ghelli>Because I needed to split the old router,
I split the old router into two,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9744-1
01:42:06.227 --> 01:42:09.557
<v Giorgio Ghelli>and the new router we only have two
children.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9755-0
01:42:11.037 --> 01:42:14.637
<v Giorgio Ghelli>This is never the case when I speak to
this, when I speak to this, sir.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9762-0
01:42:16.237 --> 01:42:19.037
<v Giorgio Ghelli>I just the same that one that pointed
more here.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9788-0
01:42:20.717 --> 01:42:25.080
<v Giorgio Ghelli>So, it's go from 50% to fifty-one,
fifty-two, fifty-three.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9788-1
01:42:25.080 --> 01:42:29.517
<v Giorgio Ghelli>It's just a route that that may end up
with just two parts.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9795-0
01:42:31.517 --> 01:42:34.957
<v Giorgio Ghelli>I think that we repeat all of this next
time.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9814-0
01:42:39.837 --> 01:42:44.852
<v Giorgio Ghelli>It's time to close it just by repeating
the property.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9814-1
01:42:44.852 --> 01:42:47.917
<v Giorgio Ghelli>Every node that contains at most.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9817-0
01:42:48.957 --> 01:42:50.357
<v Giorgio Ghelli>When they say that.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9862-0
01:42:52.237 --> 01:42:57.159
<v Giorgio Ghelli>The order of the tree is a number of
pointers.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9862-1
01:42:57.159 --> 01:43:05.012
<v Giorgio Ghelli>So you see if I have 5 pointers in the
tree, then I have at most 4 record.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9862-2
01:43:05.012 --> 01:43:12.237
<v Giorgio Ghelli>So every tree with order M contains at
every node at most M minus 1.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9878-0
01:43:12.557 --> 01:43:16.472
<v Giorgio Ghelli>And at least M divided by two,
or m - 1 / 2,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9878-1
01:43:16.472 --> 01:43:19.517
<v Giorgio Ghelli>depending whether it's even or odd.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9890-0
01:43:20.677 --> 01:43:25.997
<v Giorgio Ghelli>between 50% and 100% of capacity.
And the basic point, which...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9897-0
01:43:27.517 --> 01:43:30.077
<v Giorgio Ghelli>We will discuss next week.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9899-0
01:43:31.277 --> 01:43:31.997
<v Giorgio Ghelli>Is that?</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9937-0
01:43:32.877 --> 01:43:41.437
<v Giorgio Ghelli>The depth of the tree is bounded by the
logarithm in base MM divided by two,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9937-1
01:43:41.437 --> 01:43:49.107
<v Giorgio Ghelli>actually, of the number of the records.
So if you keep M big enough,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9937-2
01:43:49.107 --> 01:43:51.997
<v Giorgio Ghelli>this number may be very...</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9980-0
01:43:52.077 --> 01:43:58.166
<v Giorgio Ghelli>Very small, because, for example,
if you take a logarithm base at 1000,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9980-1
01:43:58.166 --> 01:44:03.408
<v Giorgio Ghelli>logarithm of a million is 2,
logarithm of a billion is 3. So,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9980-2
01:44:03.408 --> 01:44:08.989
<v Giorgio Ghelli>this number can be quite small,
provided that this is very quick,</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9980-3
01:44:08.989 --> 01:44:11.357
<v Giorgio Ghelli>and from this we will start.</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9999-0
01:44:11.517 --> 01:44:18.153
<v Giorgio Ghelli>Again, next week,
we discussed the fact that next week we</v>

90a4b0c8-b2ca-4147-85e9-515fe750cc7a/9999-1
01:44:18.153 --> 01:44:22.157
<v Giorgio Ghelli>are not meeting at on Tuesday at 2.</v>