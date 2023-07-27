---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Cloud labs for WSS, 2022
layout: page
toc: false
---

We will build a distributed word count application. But for simplicity, we will
pretend that our multi-core system is a distributed system in itself.

We will start stateless python processes to act as distributed workers. These
workers will co-ordinate with each other through [Redis](https://redis.io/).
Redis behaves like the master (or driver program) in contemporary systems.

All workers have access to a shared file system for reading and writing large
inputs. This is trivially true on our single system. In a real setup, workers 
would additionally use a distributed file system like HDFS or a blob store like 
S3.

Please keep track of every lab's work and the code. You will be asked to upload
a report covering all the labs in the end.

## Lab 1: Basic parallel program using threads

### Part 1
The goal of this lab is to have the basic setup working. You need to have
`python3` and `conda` installed.

```commandline
mkdir wss22
cd wss22/
conda create --name wss22
conda activate wss22
```

Further, you should download several large text files
[from here](https://www.gutenberg.org/browse/scores/top) into a local folder. 
Next, write a simple Python program to count the words from all the files that 
you downloaded. You may print top 10 words counted by your program. Later, we
will use this program to verify that your parallel system is correctly
counting the words and is hopefully much faster.

Once you're done with this, write a parallel program using python
~~[threads](https://docs.python.org/3/library/threading.html)~~
[multiprocessing](https://docs.python.org/3/library/multiprocessing.html).
Convince yourself that your parallel program is giving the same output as your
serial program. 

Remember that $Efficiency = T_s / p T_p$, where $T_s$ is the time taken by the
serial program, $p$ is the number of workers, and $T_p$ is the time taken by the
parallel program. Next, draw the efficiency curves that we saw during the
lecture hours. 

* Keep the input files the same, and increase the number of workers. 
* Keep the number of workers the same, increase the number of input files. 

### Part 2
Once you are done with Part 1, familiarize yourself with
[Redis](https://redis.io/).  You need `docker` and `redis` installed for this.

```
docker run -d -p 6379:6379 redis:7.0-rc3
```

Learn sending commands to redis using `redis-cli`
and from python programs using the [redis-py](https://github.com/redis/redis-py)
library. Especially familiarize yourself with [sorted
sets](https://redis.io/commands/zadd/). You will use them later to maintain word
counts.

## Lab-2: Parallel execution

In this lab, we will make the word count application run end-to-end using Redis.

But before that, you should read about
[redis streams](https://redis.io/docs/data-types/streams-tutorial/). You need
the following redis stream commands for this lab: `xadd`, `xreadgroup`,
`xcreate_group` and `xack`. Understand what they do.

Download the [starter code](assets/wss22-starter-lab2.zip). 

```commandline
unzip wss22-starter-lab2.zip
cd wss22-starter-lab2/
pip3 install -r requirements.txt
redis-cli CONFIG SET requirepass "pass"
```

Update `GLOB` in `constants.py` to point to your `data` folder.  Run 
`python3 client.py`. In this lab, you have to modify `worker.py` and `myrds.py`.

The basic structure is as follows: 

* `client.py` iterates over the folder with the text files to add the file paths
  into a redis stream using `xadd`. It then starts the worker processes.
* Worker processes do `xreadgroup` to read one file name from the Redis stream.
  Call `xreadgroup` such that each worker gets a different file name.
* Worker process reads the file it is supposed to work on and counts
  each word's frequency. 
* When done, the worker process can use `zincrby` to increment each word's count
  in a redis sorted set. And finally `xack` the message containing the filename.
* Then it reads another file by again calling `xreadgroup`. If there are no 
  more files to process, it exits.

Measurements:
* Compare the performance with your serial and parallel implementation in Lab-1.
* What if for a given text file, instead of locally counting all the words in 
  one go and then doing `zincrby`, workers do `zincrby` with a count of 1 as 
  soon as they read a word from the file?
* How does the file size impact completion time? What if each file is 100 bytes,
  1 Kb, 10 Kb, ..., 1 GB?
* How does your system handle skew? What if 100 input files are 100 MB each, 
  but 1 file is 1 GB?
* How do stragglers affect your system? What if one of the worker is running 
  at just half the speed of the other workers?

Hints:
* You may create smaller files by opening a file in text editor and truncating
  the file after a few lines.
* You may create larger files by recursively running 
  `cat in.txt in.txt in.txt in.txt > out.txt`.
* You may use [cgroups](https://stackoverflow.com/questions/28814002/using-cgroups-to-limit-cpu-usage)
  to slow down worker processes. 
* The serial program you wrote in Lab-1 will come handy to test the correctness 
  of your system.


## Lab 3: Fault tolerance of workers

Now we wish to ensure that our system is tolerant to worker failures. Since,
workers are stateless, we should be ok with losing worker state. But, we still
have to ensure two things:

* Updates to redis should be made atomic. If a worker crashes after incrementing
  counts of only a few words, then we will end up with incorrect counts. See
  [Redis fcall](https://redis.io/commands/fcall/) to `xack` a file and to
  increment word counts as one atomic operation.
* Consumer groups in Redis streams ensure that each worker gets a unique file 
  name. But, if a worker crashes after getting a file name from Redis stream, 
  that file's words may never get counted. Therefore, other workers will 
  have to steal filenames that have not been `xack`ed till a timeout.
  See [xautoclaim](https://redis.io/commands/xautoclaim/) to do so.

Measurements:
* Inject failures at different points in the worker code to verify that the 
  word counts are indeed correct even after worker failures.
* How does the `xautoclaim` timeout affect your system? Compare the 
  completion time with a very small timeout and a very large timeout both 
  with and without failures.
* Do stragglers still affect your system? Other workers should steal the file of
  a straggler and will complete their count. Observe this behavior by severely
  slowing down a worker.
* But, now the straggler and the worker who stole its file might both try to
  update the count. How can you make this update idempotent?

Hints:

* You may add crash points in the worker process to control where and how
  workers crash. For instance, after the worker reads a filename from
  `xreadgroup`, it may call `sys.exit()` if a certain worker flag is set. 
  Configure different flags for different workers at the time of their creation 
  to verify fault tolerance.
* Workers can not exit until all the other workers are done with their files.
  Use [xpending](https://redis.io/commands/xpending/) to verify this before 
  exiting from workers.
* `xack` returns the number of Redis stream messages that were actually
  acknowledged. Verify that `xack` returns 1 before writing to the word count
  sorted set to get idempotence.

## Lab 4: Fault tolerance of Redis

Finally, we would like to ensure that our system tolerates Redis failures. We
need not change the worker code for this lab. To reason about correctness, note
that a Redis instance handles one command after another in a single thread to 
keep it linearizable.

You can explore two different approaches to fault tolerance:

### 1. Checkpoints/snapshots

In this approach, we periodically create a checkpoint using
the [SAVE](https://redis.io/docs/management/persistence/#snapshotting)
command. Redis starts periodically storing a `dump.rdb` file on disk.

You can run `CONFIG GET dir` from `redis-cli` to find the directory where
`dump.rdb` gets stored. You may try to crash the Redis instance and then start a
new Redis instance. Redis should automatically read `dump.rdb` file and restore
from it. Verify that this new instance have the keys from the old instance by 
running `keys *` using `redis-cli`.

Now while the job is running, try crashing the Redis instance and restarting
another one. From a correctness standpoint, checkpoints are consistent because
Redis has a single event loop and because all our edits were made atomic in the
previous lab. 

In other words, let us say that a file `foo` was processed after the checkpoint.
Now after a failover, the new Redis instance (recovered from the checkpoint)
will remember that the file has NOT yet been `xack`ed. Therefore, a worker will
again receive the file for processing and it will again `xack` + increment word
counts in one atomic operation. Since our workers are stateless, recomputing
a file's word counts are ok.

> Ensure that you set up the new instance in an identical manner, i.e, listen on 
> the same port, set up the same password, and insert the same lua functions.
  
Measurements:

* Does the job still complete if you crash and restart a Redis instance? 
  * What if Redis crashes while the client was bootstrapping files into the 
    Redis stream? How can you handle this?
  * What if Redis crashes after the workers complete counting words from all the 
    files but before the client reads the top-3 words? How can you handle this?
* Without any faults in the system, does the completion time increase due to the
  periodic backups?
* Does the frequency of backups affect the completion time without any 
  Redis failures?
* How do input file sizes affect job completion time if we have Redis failures?
* How does the system behave if you keep killing and restarting the Redis
  instance every N seconds?

### 2. Synchronous replication 

Here, we create `2f+1` Redis replicas and connect them with Raft using the 
[RedisRaft](https://github.com/RedisLabs/redisraft) module. The replicas are 
always kept consistent by doing the replication *synchronously*. In other words, 
the leader does not return from a Redis command until it hears back an 
acknowledgement from a majority of replicas.

Try arbitrarily crashing and restarting `f` replicas while the job is running
and observe that the job finishes successfully. The good thing about this design
is that we never have to recompute a file (rollback computation) after
failovers. But the bad thing is that during normal operations (without Redis
failures), each Redis operation is now slower because of the added overhead of
replicating logs.

Measurements:

* Without any faults in the system, how does the completion time change with
  RedisRaft compared to a single Redis instance?
  * Try this experiment with small input files and with large input files.
* Does the job still complete if you crash one Redis instance? What if you 
  crash two Redis instances?
* How does the system behave if you keep killing and restarting a random Redis 
  instance every N seconds?
