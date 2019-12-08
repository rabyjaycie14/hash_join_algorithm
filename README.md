# hash_join_algorithm

---

DBMS | University of Michigan-Dearborn | Dearborn, MI | 2019

All verbiage in this document was provided as project specifications for Assignment 5 in CIS 421 by Dr Zhu at University of Michigan - Dearborn

---

The program specificiation is given as follows. Let `R1(a1, a2, a3)` and `R2(b1, b2, b3, b4)` be two relations with all integer attributes. Tuples in these two relations are sequentially stored in two data files, respectively.

+ Use the hash-join algorithm to implement a join (equijoin) of `R1` and `R2`. Assume that the
hash function is `f(k) = k mod N`, where `N` is the number of buckets allowed in your hash
structure/table.

+ Your program should allow a user to choose the joining attributes from the two relations, i.e.,
performing `R1 ./R1.ai=R2.bj R2` for any chosen pair of `ai` and `bj`, where `ai` is the `i-th` attribute in `R1 (1 ≤ i ≤ 3)` and `bj` is the `j-th` attribute in `R2 (1 ≤ j ≤ 4)`. For example, a user may want to perform `R1 ./R1.a2=R2.b3 R2.`

+ Your program should display the join result and output the selectivity of the join.

+ You may request a user to interactively input the necessary parameters, such as the data file
names for `R1` and `R2`, the number of tuples in each relation, and the joining attributes (e.g.,
1 for the 1st attribute, 3 for the 3rd attribute).

+  Use your program to perform several joins for different relation instances of `R1` and `R2`.
