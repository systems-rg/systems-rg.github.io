---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Page rank in Spark
layout: page
toc: false
---

```
$ cat in
u1 u2
u3 u2
u2 u4
u1 u1
u3 u3
u4 u4
u2 u2
u2 u4
``` 

Download [pagerank.py](https://github.com/apache/spark/blob/master/examples/src/main/python/pagerank.py).

`spark-submit pagerank.py in 10`
        
> Self loops are important otherwise page rank code doesn't work properly.
(each node should have atleast one incoming edge and at least one outgoing edge)

`$ pyspark`

```py
lines = spark.read.text("in").rdd.map(lambda r: r[0])
## what is lines? does it contain the content of file "in"?

lines.collect()
# ['u1 u2', 'u3 u2', 'u2 u4', 'u1 u1', 'u3 u3', 'u4 u4', 'u2 u2', 'u2 u4']
# lines yields a list of strings, one per line of input
# if we run lines.collect() again, it re-reads file "in"

import re
def parseNeighbors(urls):
    """Parses a urls pair string into urls pair."""
    parts = re.split(r'\s+', urls)
    return parts[0], parts[1]

# Loads all URLs from input file and initialize their neighbors.
links0 = lines.map(lambda urls: parseNeighbors(urls))
links0.collect()
# [('u1', 'u2'), ('u3', 'u2'), ('u2', 'u4'), ('u1', 'u1'), ('u3', 'u3'), ('u4', 'u4'), ('u2', 'u2'), ('u2', 'u4')]
# map, split, tuple -- acts on each line in turn
# parses each string "x y" into tuple ( "x", "y" )

links1 = links0.distinct()
links1.collect()
# [('u1', 'u2'), ('u3', 'u2'), ('u2', 'u4'), ('u1', 'u1'), ('u3', 'u3'), ('u4', 'u4'), ('u2', 'u2')]
# wide dependency
# distinct() sorts or hashes to bring duplicates together

links2 = links1.groupByKey()
links2.collect()
# [('u1', <pyspark.resultiterable.ResultIterable object at 0x7f81d4e9ad00>), ('u3', <pyspark.resultiterable.ResultIterable object at 0x7f81d4e9af10>), ('u2', <pyspark.resultiterable.ResultIterable object at 0x7f81d4e74730>), ('u4', <pyspark.resultiterable.ResultIterable object at 0x7f81d4e746d0>)]
# narrow dependency since it's already partitioned by key after distinct
# groupByKey() sorts or hashes to bring instances of each key together

for i in links2.collect():
  print(f'\n{i[0]} --', end=" ")
  for j in i[1]:
     print(j, end=" ")
# u1 --u2 u1
# u3 --u2 u3
# u2 --u4 u2
# u4 --u4

links = links2.cache()
# cache() == persist in memory
links.__dict__
# shows is_cached: True
# {'func': <function PipelinedRDD.__init__.<locals>.pipeline_func at 0x7f81d4e67700>, 'preservesPartitioning': True, '_prev_jrdd': JavaObject id=o74, '_prev_jrdd_deserializer': BatchedSerializer(PickleSerializer(), -1), 'is_cached': True, 'has_resource_profile': False, 'is_checkpointed': False, 'ctx': <SparkContext master=local[*] appName=PySparkShell>, 'prev': PythonRDD[15] at RDD at PythonRDD.scala:53, '_jrdd_val': JavaObject id=o83, '_id': None, '_jrdd_deserializer': AutoBatchedSerializer(PickleSerializer()), '_bypass_serializer': False, 'partitioner': <pyspark.rdd.Partitioner object at 0x7f81d4e9adf0>, 'is_barrier': False}

ranks = links.map(lambda url_neighbors: (url_neighbors[0], 1.0))
# Another map function. Iterate over all links and give each url a score of 1.0

# now for first loop iteration
# Calculates URL contributions to the rank of other URLs.
jj = links.join(ranks)
# the join brings each page's link list and current rank together

for i in jj.collect():
  print(f'\n{i[0]} -- ({i[1][0]}, {i[1][1]})')
# u1 -- (<pyspark.resultiterable.ResultIterable object at 0x10a6af6a0>, 1.0)
# u2 -- (<pyspark.resultiterable.ResultIterable object at 0x10a6adfc0>, 1.0)
# u3 -- (<pyspark.resultiterable.ResultIterable object at 0x10a6af760>, 1.0)
# u4 -- (<pyspark.resultiterable.ResultIterable object at 0x10a6ad480>, 1.0)

def computeContribs(urls, rank):
    """Calculates URL contributions to the rank of other URLs."""
    num_urls = len(urls)
    for url in urls:
        yield (url, rank / num_urls)

contribs = jj.flatMap(lambda url_urls_rank: computeContribs(url_urls_rank[1][0], url_urls_rank[1][1]))
contribs.collect()
# [('u2', 0.5), ('u1', 0.5), ('u2', 0.5), ('u3', 0.5), ('u4', 0.5), ('u2', 0.5), ('u4', 1.0)]

# Re-calculates URL ranks based on neighbor contributions.
from operator import add
r = contribs.reduceByKey(add)
r.collect()
# [('u2', 1.5), ('u1', 0.5), ('u3', 0.5), ('u4', 1.5)]
# reduceByKey() brings together equal keys

ranks = r.mapValues(lambda rank: rank * 0.85 + 0.15)
# the loop also just creates a lineage graph. It does not do any real work.

ranks.collect()
# [('u2', 1.4249999999999998), ('u1', 0.575), ('u3', 0.575), ('u4', 1.4249999999999998)]
# collect() is an action.
# it causes the whole computation to execute!
```