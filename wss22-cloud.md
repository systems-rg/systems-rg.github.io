---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Assets for cloud lectures
layout: page
toc: false
---

[Introduction, Scalability](assets/cloud1-intro%2Bscalability.pdf)
* References: Ch.5 of [Introduction to Parallel Computing](https://www.cs.purdue.edu/homes/ayg/book/Slides/)
* [EC2 SLA](https://aws.amazon.com/compute/sla/)
* [Ping test](https://cloudpingtest.com/aws)
* Keywords: Virtualization, overprovisioning, speedup, efficiency, isoefficiency, scalability

[DSM, MapReduce](assets/cloud2-dsm%2Bmr.pdf)
* References: [DSM](https://crystal.uta.edu/~kumar/cse6306/papers/17.pdf), [MapReduce](https://dl.acm.org/doi/10.1145/1327452.1327492)
* [Word count example](assets/mr_wc.png)
* [Architecture](assets/mr_arch.png)
* Keywords: Locality, embarassingly parallel, fault tolerance, stragglers, deterministic computation, idempotence

[Spark](assets/cloud3-spark.pdf)
* References: [Spark](https://www.usenix.org/system/files/conference/nsdi12/nsdi12-final138.pdf)
* [Simple HDFS example](assets/spark-simple.png)
* [Page rank example](wss22-cloud-spark-pagerank)
* [Page rank lineage](assets/spark-lineage-pagerank.png)
* Keywords: Resilient distributed datasets, immutable, lineage

[Flink](assets/cloud4-flink.pdf)
* References: [Spark streaming](https://dl.acm.org/doi/10.1145/2517349.2522737), [Snapshots in Flink](http://arxiv.org/abs/1506.08603)
* [Discretized streams](assets/spark-dstreams.png)
* Keywords: Freshness, stateful, discretized streams, consistent checkpoints

[Raft](assets/cloud5-raft.pdf)
* References: [Raft](https://www.usenix.org/node/184041)
* [Replicated state machine](assets/raft-smr.png)
* [Server states](assets/raft-states.png)
* [Terms](assets/raft-terms.png)
* [Committed entries](assets/raft-committed-entries.png)
* [Who can become a leader for term 8?](assets/raft-leader-completeness.png)
* Keywords: Replicated state machines, quorums, linearizability

[Amazon Dynamo](assets/cloud6-dynamo.pdf)
* References: [Dynamo](https://dl.acm.org/doi/10.1145/1323293.1294281), [CRDT](https://pages.lip6.fr/Marc.Shapiro/papers/RR-7687.pdf)
* Keywords: Eventual consistency, PACELC theorem, gossip algorithm, vector clocks, conflict free replicated data types


Labs can be accessed [here](./wss22-cloud-labs).