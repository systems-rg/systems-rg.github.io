---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Labs on Concolic Execution for WSS, 2023
layout: page
toc: false
---

## Lab 2: Solve a Kachua Puzzle 

### Download Chiron Framework
Chiron is developed at IIT Kanpur to teach topics in program analysis, verification and testing. We will use its concolic execution module in this assignment. The Chiron framework allows program analysis on programs written on ChironLang (a dialect of the Turtle language). Download Chiron (codename: Kachua) from [here](https://github.com/PRAISE-group/Chiron-Framework/tree/hooks).

### Problem Statement

Check the "examples" directory to find a ChironLang program. When you fire up Chiron on this program, you will see the turtle (kachua) at its start position. You can run a ChironLang program using the following command: 

`./chiron -r <filename>`

The kachua is lost and needs to return to Kachuapur. You have to discover an appropriate input to enable it to traverse to Kachuapur. 

### Solving Strategy
- Construct a _symbolic model_ of the provided program as another ChironLang program, such that there exists one path that provides the solution you desire;
- Use the concolic execution module of Chiron on your symbolic model to discover a solution: you can invoke the concolic execution module of Chiron using:

`./chiron.py -se -d '{":delta":5}' <filename>`

- Check your solution by running the original program on Chiron and see it reach Kachuapur;
- Shout HURRAY!
