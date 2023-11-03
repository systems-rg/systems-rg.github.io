---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Winter Systems School on Program Analysis and Optimization, IITD
layout: page
toc: false
---

## About
We are excited to host the second winter systems school during 4-8 December 2023 at CSE, IIT Delhi. We
will study classic and contemporary topics in program analysis
and optimization, taught by [Sorav
Bansal](https://sorav.compiler.ai) and [Kumar Madhukar](https://kumarmadhukar.github.io). 

## Logistics
* **Dates:** 4-8 December 2023
* **Venue:** The talks will be in the CSE department (Bharti building) and
the labs will be in LH504 and LH505 (5th floor, Lecture hall complex).
* **After winter school**: Interested students will be encouraged to apply for **internships at IIT Delhi** during eight weeks of summer 2024.  Stipend will be offered to cover living and stay expenses in the IIT hostel during the internship.

> Please note that we will NOT give any certificate of completion and will
NOT provide recommendation letters to graduate schools or otherwise for
participating in the school.

## Application process
The typical profile of a participant will be a final-year undergraduate
student or a post-graduate (Masters/PhD) student or an
industry professional interested in getting
introduced to advanced topics in program analysis and optimization.

Please fill the [form at this link](https://docs.google.com/forms/d/e/1FAIpQLSet1cpQ2A5vZfB184XnFFCmHGGv7hYBfYSNaMh_UonFxHUuGA/viewform) before 11:59pm on 31st October 2023 to apply to attend the Winter school.  The form requires you to read a paper and write what you understood from it.  Please budget at least two days for this.

## Inaugural talk
#### December 4th, 9-10:30 am

Talk by [Ranjit Jhala](https://ranjitjhala.github.io/). Details will be announced soon.

### Flux: A Language Integrated Verifier for Rust

The last few decades have seen great strides in various technologies for
analyzing programs. However, we believe these technologies will only
become ubiquitous if they can be seamlessly integrated within programming
languages with mature compilers, libraries and tools, so that programmers can
use them continuously throughout the software development lifecycle (and not just
as a means of post-facto validation.)

In this talk, we will describe Flux: a new language integrated verifier for
the Rust programming language that lets the programmer write *specifications*
--- by combining logical refinements with Rust's ownership mechanisms ---
which permits automatic *verification* using a combination of SMT and
abstract interpretation.

We demonstrate the advantages of refinement types by using a suite of
benchmarks to compare Flux with classical program logic based approaches
as implemented in the state-of-the-art Prusti verifier.
We show that by exploiting language structure to factor complex program
invariants into simple types and refinements, Flux can make verification
ergonomic by slashing specification lines by a factor of two, verification
time by an order of magnitude, and the programmer's annotation overhead
from up to 24% of code size (average 14%), to nothing at all.

### Tentative schedule:

|-------|-|-|-|
4th Dec | **10:30 am-11:50 pm** <br/> *Predicate Transformers : Weakest precondition, Hoare logic* | **12 pm-1:20 pm** <br/> *Formal Verification of Deep Neural Networks* | **3-6 pm** <br/> Lab |
5th Dec | **10:30 am-11:50 pm** <br/> *Automatic Invariant Inference : Guess-and-Check, Affine Invariants based on linear algebra techniques* | **12 pm-1:20 pm** <br/> *Abstraction Refinement Techniques for Verifying Deep Neural Networks* | **3-6 pm** <br/> Lab |
6th Dec | **10:30 am-11:50 pm** <br/> *Automatic Equivalence (Bisimulation) Checking* | **12 pm-1:20 pm** <br/> *Pruning and Slicing of Deep Neural Networks, Verifying Learning-Augmented Systems* | **3-6 pm** <br/> Lab |
7th Dec | **10:30 am-11:50 pm** <br/> *Superoptimization* | **12 pm-1:20 pm** <br/> *Verifying Recurrent, Convolutional, and Binarized Neural Networks* | **3-6 pm** <br/> Lab |
8th Dec | **10:30 am-11:50 pm** <br/> *Reflections on Trusting Trust* | **12 pm-1:20 pm** <br/> *Deep Neural Networks and Formal Explainability* | **3-6 pm** <br/> Lab |
