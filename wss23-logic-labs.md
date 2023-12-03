---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Labs on Logic, Hoare Logic, Predicate Transformers, Invariant Inference, Equivalence Checking for WSS, 2023
layout: page
toc: false
---

## Lab 1: Experiment with [Z3](https://compsys-tools.ens-lyon.fr/z3/)
### Bitvectors
- Understand [bitvectors](https://microsoft.github.io/z3guide/docs/theories/Bitvectors/)
- Check the commutativity of multiplication for integers and bitvectors, i.e., for all *v*,*w*, does *v+w=w+v* hold?
- Check if subtraction is the inverse of addition for bitvectors, i.e., for all *v*,*w* (both bitvectors), does *(v+w)-w=v*?
- Check if division is the inverse of multiplication for non-zero bitvectors.
- Check if multiplication is the inverse of division for non-zero bitvectors
- Check if there is a multiplicative inverse of every bitvector value, i.e., for every bitvector value *v*, does there exist another bitvector value *w* such that *vw=1* (where the multiplication of *v* and *w* is in bitvector arithmetic).
Report your findings, along with the Z3 queries that you used.

### Arrays
- Check if *store p,v* (a program with one instruction that stores a value *v* at pointer *p*) is equivalent to another program *store p,w; store p,v* (a program with two instructions that stores value *w* followed by value *v* both to the same pointer *p*). _Hint_: construct the logical expression for the final state of the memory in both cases.
- Check if *store p,v; load p,r1* (a program with two instructions that stores a value *v* at pointer value *p* and loads a value from pointer *p* to register *r1*) is equivalent to another program *store p,v; move v,r1* (a program with two instructions that stores value *v* to pointer *p* and then moves value *v* to register *r1*).  _Hint_: construct the logical expressions for the final state of the memory and the value stored in register *r1* in both cases
