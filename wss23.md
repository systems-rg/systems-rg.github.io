---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Winter Systems School on Program Analysis and Optimization, IITD
layout: page
toc: false
---

## About
We are excited to host the second winter systems school during 4-8 December 2023 at CSE, IIT Delhi. We
will study classic and contemporary topics in program analysis and optimization, taught by [Sorav
Bansal](https://sorav.compiler.ai) and [Kumar Madhukar](https://kumarmadhukar.github.io). The school will have
a series of guest lectures, on symbolic execution and fuzzing, and their application to neural network analysis, by [Subhajit Roy](https://www.cse.iitk.ac.in/users/subhajit/).

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

Please fill the [form at this link](https://docs.google.com/forms/d/e/1FAIpQLSet1cpQ2A5vZfB184XnFFCmHGGv7hYBfYSNaMh_UonFxHUuGA/viewform) before 11:59pm on ~~31st October~~ 12th November 2023 to apply to attend the Winter school.  The form requires you to read a paper/blog, and write what you understood from it.  Please budget at least two days for this.

## Inaugural talk by [Ranjit Jhala](https://ranjitjhala.github.io/) on "Flux: A Language Integrated Verifier for Rust"
#### December 4th, 9-10:30 am

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

|-------|-|-|-|-|-|
4th Dec | **0900-1030** <br/> *Inaugural Talk<br/>(Ranjit Jhala)* | **1030-1100** <br/> *Tea/Coffee* | **1100-1230** <br/> *Introductory Sessions<br/>(30 mins for every speaker)* | **1230-1400** <br/> *Lunch* | **1430-1700** <br/> *Lab* |
5th Dec | **0900-1030** <br/> *Session I<br/>(Sorav Bansal)* | **1030-1100** <br/> *Tea/Coffee* | **1100-1230** <br/> *Session II<br/>(Sorav Bansal)* | **1230-1400** <br/> *Lunch* | **1430-1700** <br/> *Lab* |
6th Dec | **0900-1030** <br/> *Session I<br/>(Subhajit Roy)* | **1030-1100** <br/> *Tea/Coffee* | **1100-1230** <br/> *Session II<br/>(Subhajit Roy)* | **1230-1400** <br/> *Lunch* | **1430-1700** <br/> *Lab* |
7th Dec | **0900-1030** <br/> *Session I<br/>(Kumar Madhukar)* | **1030-1100** <br/> *Tea/Coffee* | **1100-1230** <br/> *Session II<br/>(Kumar Madhukar)* | **1230-1400** <br/> *Lunch* | **1430-1700** <br/> *Lab* |
8th Dec | **0900-1000** <br/> *Concluding Session I<br/>(Kumar Madhukar)* | **1000-1030** <br/> *Tea/Coffee* | **1030-1230** <br/> *Concluding Session II<br/>(Subhajit Roy)* <br/><br/> *Concluding Session III<br/>(Sorav Bansal)* | **1230-1400** <br/> *Lunch* | |

### List of topics (speaker-wise):
* *Sorav Bansal*: Predicate Transformers (Weakest precondition, Hoare logic), Automatic Invariant Inference (Guess-and-Check, Affine invariants based on linear algebra techniques), Automatic Equivalence Checking (Automatic Bisimulation Inference), Superoptimization, Reflections on Trusting Trust
* *Subhajit Roy*: Program Testing Fundamentals, Symbolic Execution, Symbolic Execution for testing Neural Networks, Neural network guided testing of Software Systems
* *Kumar Madhukar*: Formal Verification of Deep Neural Networks, Abstraction-Refinement Techniques, Pruning and Slicing of DNNs, Verifying Learning-Augmented Systems, Recurrent, Convolutional, and Binarized Neural Networks, Explainability
