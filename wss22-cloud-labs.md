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