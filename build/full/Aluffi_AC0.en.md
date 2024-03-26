---
author:
- 'Multiversity *Algebra Chapter 0* Reading Group'
---

Summaries
=========

Chapter I)

Section 1) Explains fundamentals of set theory and basic set operations

Section 2) Explains set relations, set functions and some more advanced
set operations

Section 3) Presents categories, and multiple examples of categories.
Some are simple, some are advanced.

Section 4) Presents monomorphisms and epimorphisms in more detail,
taking care to distinguish general morphisms from set functions and
their accolytes (inj, surj, etc)

Section 5) Presents more advanced concepts from category theory, mostly
some important universal properties

Chapter II)

Group Weekly Reports
====================

Week 1 : Today we mostly talked about the first chapter first section's
reading; going over the vocabulary term by term (see the lexicon on the
github repo), and going more in depth over certain concepts
(particularly relating to set relations). We also saw a bit of a
\"teaser\" of how these notions are used. We did not go over the
exercises since not everyone had done them.

Week 2 : Today we continued on discussing the first chapter, it was
mostly freeform. We mostly talked about foundations of set theory
(mostly stemming from the discussion of exercise 1 on russell's
paradox), why we use function notation the way we do, and about some of
the operators over sets themselves (including through some examples from
linear algebra and things like the subobject classifier which is seen at
the end of section 3).

Week 3 : Today we finished discussing the first chapter. We went over
all exercises. We mostly spoke about equivalence relations and
partitions. We also spoke about the geometry/topology of quotients of
sets by equivalence relations. This was naturally related to exercises
1.2 to 1.7.

Week 4 : We went over monomorphisms and epimorphisms in more depth. We
corrected exercises 2.1 to 2.3 (included)

Week 5 : We went in depth over the distinction between isomorphisms and
bijections (foreshadowing a bunch of category theory while we were at
it) and corrected exercises 2.4 and 2.5.

Week 6 : We went in depth over the notion of section. We corrected
exercises 2.6 and 2.7. For the latter exercise, we understood Tristan's
solution by ourselves ! (written by Amric)

Week 7 : We reviewed the notions of algebraic quotient and
well-definition. We broached the notion of universal property. We used
this to correct exercises 2.8 and 2.9.

Week 8 : We corrected exercises 2.10 and 2.11. We then did some
preliminary explanations to present categories and help with the reading
of section 3.

Week 9 : We spoke more in depth about category theory, concrete
categories, local smallness, algebraic structures (and their vocabulary)
and applied category theory.

Week 10 : We reviewed examples 3.2, 3.3, 3.4 and gave a bunch of
disambiguation ideas for 3.5. Next week we'll go over 3.5 and 3.6 in a
bit more detail, and start correcting the exercises for this section.
We'll leave 3.7 and above for when we get to their respective exercises

Lexicon
=======

Chapter 1 {#chapter-1 .unnumbered}
---------

### Section 1 {#section-1 .unnumbered}

-   Set (not a multiset)

-   ∅: the empty set, containing no elements;

-   N: the set of natural numbers (that is, nonnegative integers);

-   Z: the set of integers;

-   Q: the set of rational numbers;

-   R: the set of real numbers;

-   C: the set of complex numbers.

-   Singleton:

-   ∃: existential quantifier, \"there exists\"

-   ∀: universal quantifier, \"for all\"

-   inclusion:

-   subset:

-   cardinal:

-   powerset:

-   ∪: the union:

-   ∩: the intersection:

-   $\\$: the difference:

-   $\coprod$: the disjoint union:

-   ×: the (Cartesian) product:

-   complement of a subset

-   relation

-   order relation

-   equivalence relation

-   reflexivity

-   symmetry

-   antisymmetry

-   transitivity

-   partition

-   quotient by an equivalence relation

### Section 2 {#section-2 .unnumbered}

-   function

-   graph

-   (categorical, function) diagram

-   identity function

-   kernel (of a function)

-   image (of a function)

-   restriction (of a function to a subset)

-   multiset

-   composition

-   commutative (diagram)

-   injection

-   surjection

-   bijection

-   isomorphism

-   inverse

-   pre-inverse, right-inverse

-   post-inverse, left-inverse

-   monomorphism

-   epimorphism

-   natural projection

-   natural injection

-   canonical decomposition (of a function)

### Section 3 {#section-3 .unnumbered}

-   category

-   object

-   morphism

-   endomorphism

-   operation

-   discrete category

-   small category

-   locally small category

-   slice category

-   coslice category

-   comma category (mentioned, undefined)

-   pointed set

-   $C^{A, B}$ category ?? (bislice, bicoslice, fibered bislice, fibered
    bicoslice)

-   dual category

### Section 4 {#section-4 .unnumbered}

-   automorphism

### Section 5 {#section-5 .unnumbered}

-   universal property

-   initial object

-   terminal object

-   (categorical) product

-   (categorical) coproduct

Exercise solutions
==================

Chapter I) {#chapter-i .unnumbered}
----------

### Section 1) {#section-1-1 .unnumbered}

#### 1.1) {#section .unnumbered}

In a nutshell, Russell's paradox proves, by contradiction, that certain
mathematical collections cannot be sets. It posits the existence of a
\"set of all sets that don't contain themselves\". Such a set can
neither contain itself (since in that case, it would be a \"set that
does contain itself\", and should be excluded); nor can it exclude it
itself (since in that case, it would be a \"set that doesn't contain
itself\", and should be included).

#### 1.2) {#section-6 .unnumbered}

Prove that any equivalence relation over a set $S$ defines a partition
of $\mathcal{P}_S$.

a\) $\mathcal{P}_S$ has no empty elements: any element in $S$ is part of
at least one equivalence class, the class containing at least that
element itself. Since there is no equivalence class constructed
independently from elements, there are no empty equivalence classes.

b\) Elements of $\mathcal{P}_S$ are disjoint: suppose there is an
element $x$ that is part of $A$ and $B$, two distinct equivalence
classes. $\forall a \in A, x \sim a$ and $\forall b \in B, x \sim b$. By
transivity through $x$, $\forall a \in A, \forall b \in B, a \sim b$.
Therefore, $A$ and $B$ are the same equivalence class: $A = B$.
Contradiction. Therefore all elements of $\mathcal{P}_S$ are disjoint
subsets of $S$.

c\) The union of all elements of $\mathcal{P}_S$ makes up $S$: suppose
$\exists x \in S$ such that
$x \notin \bigcup_{S_i \in \mathcal{P}_S} S_i$. From the argument made
in (a), $x$ exists in at least one equivalence class, the class which
contains only $x$ itself. This is one of ou $S_i$ sets. Contradiction.
Therefore, $\bigcup_{S_i \in \mathcal{P}_S} S_i = S$

#### 1.3) {#section-7 .unnumbered}

Given a partition $\mathcal{P}$ on a set $S$, show how to define a
relation $\sim$ on $S$ such that $P$ is the corresponding partition.

The insight here is to build an equivalence relation such that two
elements are equivalent if and only if they are part of the same subset
of $S$, which is understood as their common equivalence class.

We define $\sim$ such that
$\forall S_i, S_j \in \mathcal{P}, \forall x \in S_i, \forall y \in S_j, x \sim y \Leftrightarrow S_i = S_j$.

Let us prove that $\sim$ is an equivalence relation.

a\) Reflexivity:
$$\forall A \in \mathcal{P}, \forall x \in A, A = A \Rightarrow x \sim x$$

b\) Symmetry:
$$\forall S_i, S_j \in \mathcal{P}, \forall x \in S_i, \forall y \in S_j, x \sim y \Leftrightarrow S_i = S_j \Leftrightarrow S_j = S_i \Leftrightarrow y \sim x$$

c\) Transitivity:

$$\begin{aligned}
\forall S_i, S_j, S_k \in \mathcal{P}, \forall x \in S_i, \forall y \in S_j, \forall z \in S_k, \\
(x \sim y) \cap (y \sim z) \\
    \Leftrightarrow \\
(S_i = S_j) \cap (S_j = S_k) \\
    \Rightarrow \\
S_i = S_k \\
    \Leftrightarrow \\
x \sim z
\end{aligned}$$

Therefore, $\sim$ is indeed an equivalence relation, and is generated
uniquely by the partition.

#### 1.4) {#section-8 .unnumbered}

How many different equivalence relations may be defined on the set
$\{1, 2, 3\}$?

If we start with the 1 element set, we have only one possible partition,
one possible equivalence class.

With the 2 element set, there are 2 partitions, $\{\{1, 2\}\}$ and
$\{\{1\}, \{2\}\}$.

With the 3 element set, there is:

-   1 partition of type 1-1-1: $\{\{1\}, \{2\}, \{3\}\}$.

-   3 partitions of type 2-1: $\{\{1\}, \{2, 3\}\}$,
    $\{\{2\}, \{1, 3\}\}$, and $\{\{3\}, \{1, 2\}\}$.

-   1 partition of type 3: $\{\{1, 2, 3\}\}$.

Hence, there are five equivalence classes on the 3 element set.

See the Bell numbers: https://oeis.org/A000110

#### 1.5) {#section-9 .unnumbered}

Give an example of a relation that is reflexive and symmetric, but not
transitive. What happens if you attempt to use this relation to define a
partition on the set?

Let's imagine a \"similarity relation\" we can notate with $\simeq$. We
can imagine it to work like a looser version of equality (say for
example, if an integer is only $1$ away, then it counts as similar).

-   reflexive: $\forall a \in S, a \simeq a$ (an element is always
    \"similar\" to itself)

-   symmetric: $\forall a, b \in S, a \simeq b \Rightarrow b \simeq a$
    (\"similarity\" goes both ways)

-   not transitive:
    $\exists a, b, c \in S, (a \simeq b) \land (b \simeq c) \land \lnot (a \simeq c)$
    (just because $a \simeq b$ and $b \simeq c$ are similar, that
    doesn't mean $a \simeq c$ works, because it is possible for the
    \"similarity gap\" to be too large to qualify as \"similar\". E.g.:
    $(a, b, c) = (1, 2, 3)$.).

If we use this to define a partition $P$ on some set $S$:
$S/\simeq := P_\simeq$, there is ambiguity as to which element should go
into which equivalence class.

This idea deserves further discussion.

In terms of graph theory, if we express a set with an internal relation
as a graph, we can represent elements as nodes and relationships as
edges. Reflexivity means that every node has a loop (unary, self-edge).
Symmetry means that the graph is not directed (since every relationship
goes both ways). Transitivity means that every connected subset of nodes
is a maximal clique (synonymously, every connected component is a
complete subgraph).

In a relation which is reflexive and symmetric, but not transitive, you
would have connected components of this graph which are not cliques. For
these, there is ambiguity as to how you would group their nodes. Two
obvious choices would be either:

-   to remove the minimal number of edges to obtain n distinct cliques
    (thereby gaining the *transitive restriction* of the relation) from
    a given non-clique; or

-   to complete the connected subgraph into a clique (thereby gaining
    the *transitive closure* of the relation).

#### 1.6) {#section-10 .unnumbered}

Define a relation $\sim$ on the set $\mathbb{R}$ of real numbers, by
setting $a \sim b \Leftrightarrow b - a \in \mathbb{Z}$. Prove that this
is an equivalence relation, and find a 'compelling' description for
$\mathbb{R}/\sim$. Do the same for the relation $\approx$ on the plane
$\mathbb{R} \times \mathbb{R}$ defined by declaring
$(a_1, a_2) \approx (b_1, b_2) \Leftrightarrow b_1 - a_1 \in \mathbb{Z} \text{ and } b_2 - a_2 \in \mathbb{Z}$.

TODO: forgot to prove that it's an equivalence relation

$b - a \in \mathbb{Z}$ means that 2 real numbers differ by an integral
amount. This means that the equivalence relation algebraically describes
the idea that \"with this relation, 2 real numbers are the same iff they
have the same fractional component $x$ (or $1 - x$ for negative
numbers)\". Eg, $4.76 \sim 1024.76 \sim -5.34$, since
$-5.34 + 10 = 4.76$, etc.

To make an algebraic quotient of a set by an equivalence relation, we
take the function which maps each element to its corresponding
equivalence class, in the set (partition) containing these equivalence
class. Intuitively, this is similar to keeping only one representative
element per equivalence class. For the example class above, we can keep
the representative $0.76$. There is such an equivalence class for every
fractional part possible, that is, one for every number in $[0, 1[$. The
corresponding map is the \"real remainder of division modulo 1\". This
map is well-defined because each real number has only one output for
this map, and all real numbers that are equivalent through $\sim$ are
mapped to the same value in the output set.

We should also notice that since $0 \sim 1$, this space loops around on
itself. Intuitively, if you increase linearly in the input space
$\mathbb{R}$, it goes back to $0$ after $0.9999999...$ in the output
space. This output space is thus a circle of perimeter $1$.

Similarly,
$b_1 - a_1 \in \mathbb{Z} \text{ and } b_2 - a_2 \in \mathbb{Z}$ means
that 2 points in the 2D plane are the same iff they differ in each
coordinate by an integral amount. This boils down to combining two such
loops from the first part of the exercise: one in the $x$ direction and
one in the $y$ direction: what this gives is the small square
$[0, 1[ \times [0, 1[$, which loops to $x = 0$ (resp. $y = 0$) when
$x = 1$ (resp. $y = 1$) is reached. This space functions like a small
torus, of area $1$.

### Section 2) {#section-2-1 .unnumbered}

#### 2.1) {#section-11 .unnumbered}

How many different bijections are there between a set $S$ with $n$
elements and itself?

Any bijection is a choice of a pairs from 2 sets of the same size, where
each element is used only once, and each pair has one element from each
set. At first there are $n$ choices in each set. We go through each
possible input element in order (no choice), for each one, we pick one
amongst $n$ possibilities for an output.

There are then $(n-1)$ choice of output left, etc.

Ccl°: $\prod_{i=1}^{i=n} i = n!$

#### 2.2) {#section-12 .unnumbered}

Prove that a function has a right-inverse (pre-inverse) iff it is
surjective (can use AC).

Let $f \in (A \to B)$.

##### 2.2.a) $\Rightarrow$ {#a-rightarrow .unnumbered}

Suppose that $f$ has a right-inverse (pre-inverse). We have
$\exists g \in (B \to A), f \circ g = id_B$

Suppose that $f$ is not a surjection. This means
$\exists b \in B, \nexists a \in A, b = f(a)$

$f(g(b))= id_B (b) = b$ Necessarily, $g(b)$ is such an $a$, so
$\exists a \in A, b = f(a)$. Contradiction.

Ccl°:: f is a surjection.

##### 2.2.b) $\Leftarrow$ {#b-leftarrow .unnumbered}

Suppose that f is a surjection.

$\forall b \in B, \exists a \in A, b = f(a)$

We will construct a pre-inverse for $f$.

The insight here is to realize that a surjection divides its input set
into a partition, where each 2-by-2 disjoint subset corresponds to
$f^{-1}(\{q\})$, for every $q$ in the output set. More formally, each
\"fiber\" (preimage of a singleton) is a disjoint subset of the input
set, and the union of fibers is the input set itself. You can see this
in the following diagram:

(add diagram) 1234 to ab 1a 2a (fiber from a) 3b 4b (fiber from b)
https://tex.stackexchange.com/questions/157450/producing-a-diagram-showing-relations-between-sets
https://tex.stackexchange.com/questions/79009/drawing-the-mapping-of-elements-for-sets-in-latex

Using AC, we select a single element from each such fiber. For each
$q \in B$, we name $p_q \in f^{-1}(\{q\})$ the chosen element. We define
$g$ as $g \in (B \to A), g = (q \mapsto p_q)$. With this,
$\forall b \in B, f \circ g (b) = b$, and so $f \circ g = id_A$. Thus,
$f$ has a preinverse.

A summary of this idea: all surjection preinverses are simply a choice
of a representative for each fiber of the surjection as the output to
the respective singleton.

#### 2.3) {#section-13 .unnumbered}

Prove that the inverse of a bijection is a bijection, and that the
composition of two bijections is a bijection.

##### 2.3.a) {#a .unnumbered}

Using the fact that a function is a bijection iff it has a two-sided
inverse (Corollary 2.2) we can see from this defining fact,
$f \in (A \to B) \text{ bijective } \Leftrightarrow \exists f^{-1} \in (B \to A), (f^{-1} \circ f = id_A \text { and } f \circ f^{-1} = id_B)$
that $f$ is naturally $f^{-1}$'s (unique) two-sided inverse, and so
$f^{-1}$ is also a bijection.

##### 2.3.b) {#b .unnumbered}

Let be $f \in (A \to B), g \in (B \to C)$, both bijective (hence with
inverses in the respective function spaces). Let
$h \in (A \to C), h = g \circ f$ and
$h^{-1} \in (C \to A), h^{-1} = f^{-1} \circ g^{-1}$. We have:

$$\begin{aligned}
h^{-1} \circ h &= (f^{-1} \circ g^{-1}) \circ (g \circ f) \\
               &=  f^{-1} \circ g^{-1}  \circ  g \circ f  \\
               &=  f^{-1} \circ          id_B    \circ f  \\
               &=  f^{-1} \circ                        f  \\
               &=  id_A
\end{aligned}$$

$$\begin{aligned}
h \circ h^{-1} &= (g \circ f) \circ (f^{-1} \circ g^{-1}) \\
               &=  g \circ f  \circ  f^{-1} \circ g^{-1}  \\
               &=  g \circ     id_B         \circ g^{-1}  \\
               &=  g \circ                        g^{-1}  \\
               &=  id_C
\end{aligned}$$

Therefore $h$ and $h^{-1}$ are two-sided inverses of each other, and
thus bijections. From this we conclude that the composition of any two
bijections is also a bijection.

#### 2.4) {#section-14 .unnumbered}

Prove that 'isomorphism' is an equivalence relation (on any set of
sets).

##### 2.4.a) Problem statement {#a-problem-statement .unnumbered}

Let $\mathcal{A}$ be a set of sets. We define the relation $\simeq$
between the elements of $\mathcal{A}$ as the following:

$$\forall X, Y \in \mathcal{A}, \; X \simeq Y \Leftrightarrow \text {there exists a bijection between $X$ and $Y$}$$

Let us show that $\simeq$ is an equivalence relation.

##### 2.4.b) Reflexivity {#b-reflexivity .unnumbered}

For any set $A \in \mathcal{A}$, the identity mapping on $A$ is a
bijection. This means that $\forall A \in \mathcal{A}, A \simeq A$, ie,
$\simeq$ is reflexive.

##### 2.4.c) Symmetry {#c-symmetry .unnumbered}

$$\begin{aligned}
\forall X, Y \in \mathcal{A}, \; X \simeq Y & \Rightarrow \exists f      \in (X \to Y) \text{ bijective} \\
                                            & \Rightarrow \exists f^{-1} \in (Y \to X) \text{ bijective} \\
                                            & \Rightarrow Y \simeq X
\end{aligned}$$

Therefore, $\simeq$ is symmetric.

##### 2.4.d) Transitivity {#d-transitivity .unnumbered}

Let be $X, Y, Z \in \mathcal{A}$. Suppose that $X \simeq Y$ and
$Y \simeq Z$. This means $\exists f \in (X \to Y), g \in (Y \to Z)$,
both bijections. Let be $h \in (X \to Z), h = g \circ f$. $h$ is also a
bijection since the composition of two bijections is also a bijection
(exercise 2.3).

The existence of $h$ implies $X \simeq Z$.

Therefore $\simeq$ is transitive.

##### 2.4.e) Conclusion {#e-conclusion .unnumbered}

Isomorphism, $\simeq$, is a relation on an arbitrary set (of sets) which
is always reflexive, symmetric and transitive. It is thus an equivalence
relation.

#### 2.5) {#section-15 .unnumbered}

Formulate a notion of epimorphism and prove that epimorphisms and
surjections are equivalent.

See \"notes\" file: section \"Proofs of mono/inj and epi/surj
equivalence\".

#### 2.6) {#section-16 .unnumbered}

With notation as in Example 2.4, explain how any function
$f \in (A \to B)$ determines a section of $\pi_A$.

A section is the preinverse of a surjection. Here, the surjection in
question is $\pi_A$ the projection of $A \times B$ onto $A$.

Let $f \in (A \to B)$.

We now consider the function which maps an input $a \in A$ of $f$ to its
\"geometric representation\" (its coordinates in the enclosing space
$A \times B$, corresponding to a point of the graph $\Gamma_f$).
$$\hat{f} \in (A \to (A \times B)), \hat{f} = ( \; a \mapsto (a, f(a)) \; )$$
We notice that $\hat{f}(A) = \Gamma_f$.

Naturally, $\pi_A \circ \hat{f} = (a \mapsto a) = id_A$, therefore,
$\hat{f}$ is a pre-inverse (section) of $\pi_A$.

This set of relationships can be expressed in the following commutative
diagram:

PS: see \"On sections and fibers\" in the \"notes\" file for a worked
example.

#### 2.7) {#section-17 .unnumbered}

Let $f \in (A \to B)$ be any function. Prove that the graph $\Gamma_f$
of $f$ is isomorphic to $A$.

Using the elements from the previous exercise, we know that $\hat{f}$ is
injective from $A$ into $A \times B$. This property is inherited to any
restriction of the codomain $Z \subseteq A \times B$, and corresponding
implied restriction of the domain to $Y = \hat{f}^{-1}(Z) \subseteq A$.
In particular, here, $Y = A$ and $Z = \Gamma_f = \hat{f}(A)$. We now
consider
$\overline{f} \in (A \to \Gamma_f), \overline{f} = (a \mapsto \hat{f}(a))$.
We can see that $\overline{f}$ is injective from being a restriction of
an injective function to a smaller codomain. We also know that
$\overline{f}$ is surjective, since its domain is its image. Therefore,
$\overline{f}$ is a bijection. This means that $A \simeq \Gamma_f$.

#### 2.8) {#section-18 .unnumbered}

Describe as explicitly as you can all terms in the canonical
decomposition of the function $f \in (\mathbb{R} \to \mathbb{C})$
defined by $f = (r \mapsto e^{2 \pi i r})$. (This exercise matches one
assigned previously, which one?)

Firstly, elements of $\mathbb{R}$ are equivalent by this map (they have
the same output) if they vary by $1$ from each other. This is a
reference to the equivalence relation $\sim$ in exercise 1.6. Therefore,
we will use $\mathbb{R}/\sim \; \simeq S^1$ in our decomposition.
Obviously, the map from $(\mathbb{R} \to \mathbb{R}/\sim)$, which maps
each element of $\mathbb{R}$ to respective their equivalence class is a
surjection (since there's no empty equivalence class).

Secondly, as mentioned, we have a bijection $\tilde{f}$ between
$\mathbb{R}/\sim$ and $S^1$, the circle group of unit complex numbers,
namely $\tilde{f} = (x \mapsto e^{2 \pi i x}$, where each element $x$ of
$\mathbb{R}/\sim$ can be understood to correspond to a (class
representative) value in the interval $[0, 1[$.

Finally, we do the canonical injection of $S^1$ into its superset
$\mathbb{C}$.

#### 2.9) {#section-19 .unnumbered}

Show that if $A \simeq A'$ and $B \simeq B'$ , and further
$A \cap B = \emptyset$ and $A' \cap B' = \emptyset$, then
$A \cup B \simeq A' \cup B'$. Conclude that the operation $A \coprod B$
(as described in §1.4) is well-defined up to isomorphism.

We suppose the aforementioned.

Let $f_A$ be a bijection from $A \to A'$, and $f_B$ be a bijection from
$B \to B'$.

We define the following:

$$f \in (A \cup B \to A' \cup B'),
\text{ such that }
\begin{cases}
    \forall a \in A, \; f(a) = f_A(a) \\
    \forall b \in B, \; f(b) = f_B(b)
\end{cases}$$

This function is a well-defined function, since $A \cap B = \emptyset$:
every element of the domain has one, and only one, possible image.

Similarly, we define:

$$g \in (A' \cup B' \to A \cup B),
\text{ such that }
\begin{cases}
    \forall a \in A', \; g(a) = f_A^{-1}(a) \\
    \forall b \in B', \; g(b) = f_B^{-1}(b)
\end{cases}$$

Similarly, because $A' \cap B' = \emptyset$, $g$ is well-defined.

Let us study $g \circ f$. We have: $$\begin{cases}
    \forall a \in A, \; g(f(a)) = f_A^{-1}(f_A(a)) = a \\
    \forall b \in B, \; g(f(b)) = f_B^{-1}(f_B(b)) = b
\end{cases}$$

Hence, $g \circ f = id_{A \cup B}$. Similarly,
$f \circ g = id_{A' \cup B'}$. Therefore, $g = f^{-1}$, $f$ is a
bijection, and $A \cup B \simeq A' \cup B'$.

We'll now do a shift in notation. Let be some arbitrary sets $A$ and
$B$. Let be $A_1, A_2, B_1, B_2$ such that $A_1 = \{ 1 \} \times A$,
$A_2 = \{ 2 \} \times A$, $B_1 = \{ 1 \} \times B$, and
$B_2 = \{ 2 \} \times B$. This means $A \simeq A_1$, $A \simeq A_2$,
$B \simeq B_1$, and $B \simeq B_2$. It also means
$A_1 \cap A_2 = \emptyset$ and $B_1 \cap B_2 = \emptyset$. From the
above, this implies $A_1 \cup B_1 \simeq A_2 \cup B_2$.

This means that the disjoint union of $A$ and $B$ is indeed
well-defined, up to isomorphism: so long as 2 respective copies of $A$
and $B$ are made in a way that their intersection is empty, the 2
respective unions of 1 copy each will be isomorphic.

#### 2.10) {#section-20 .unnumbered}

Show that if $A$ and $B$ are finite sets, then $|B^A| = |B|^{|A|}$.

The number of $|B^A|$ functions in $B^A = (A \to B)$ can be counted in
the following way.

For each element $a$ of $A$, of which there are $|A|$, we can pick any
element of $B$ as the image; a total of $|B|$ choices per choice of $a$.
This means $|B| \times ... \times |B|$, a total of $|A|$ times. Hence,
$|B^A| = |B|^{|A|}$.

#### 2.11) {#section-21 .unnumbered}

In view of Exercise 2.10, it is not unreasonable to use $2^A$ to denote
the set of functions from an arbitrary set $A$ to a set with $2$
elements (say $\mathbb{B} = \{0, 1\}$). Prove that there is a bijection
between $2^A$ and the power set $\mathcal{P}(A)$ of $A$.

Simply put, every subset $A_i$ of $A$ is built through a series of $|A|$
choices: for each element $a$ in $A$, do we keep the element $a$ in our
subset $A_i$ (output $1$) or do we remove it (output $0$) ? It is then
easy to see that such a series of choices can easily be encoded as a
unique function in $A \to \mathbb{B}$. The totality of such series of
choices thus corresponds both to the space $A \to \mathbb{B}$, and to
the powerset $\mathcal{P}(A)$, and there is a bijection between the two.

### Section 3) {#section-3-1 .unnumbered}

#### 3.1) {#section-22 .unnumbered}

Let $\mathcal{C}$ be a category. Consider a structure $\mathcal{C}^{op}$
with:

-   $Obj(\mathcal{C}^{op}) \coloneqq Obj(\mathcal{C})$;

-   for $A$, $B$ objects of $\mathcal{C}^{op}$ (hence, objects of
    $\mathcal{C}$),
    $Hom_{\mathcal{C}^{op}} (A, B) \coloneqq Hom_{\mathcal{C}} (B, A)$

Show how to make this into a category.

##### 3.1.a) Composition {#a-composition .unnumbered}

First, to make things clearer and more rigorous, let us distinguish
composition in $\mathcal{C}$ as $\circ$ and composition in
$\mathcal{C}^{op}$ as $\star$. We define $\star$ as: $$\begin{aligned}
    & \forall f \in Hom_{\mathcal{C}^{op}} (B, A) = Hom_{\mathcal{C}} (A, B), \\
    & \forall g \in Hom_{\mathcal{C}^{op}} (C, B) = Hom_{\mathcal{C}} (B, C), \\
    & \exists h \in Hom_{\mathcal{C}^{op}} (C, A) = Hom_{\mathcal{C}} (A, C), \\
    & f \star g \coloneqq g \circ f = h
\end{aligned}$$

We will now show that $\mathcal{C}^{op}$ with $\star$ verifies the other
axioms of a category (namely identity and associativity of composition).

##### 3.1.b) Identity {#b-identity .unnumbered}

Since $\mathcal{C}$ is a category, since $\mathcal{C}^{op}$ has the same
objects, and since, by definition, for all object $A$, we have
$Hom_{\mathcal{C}^{op}} (A, A) = Hom_{\mathcal{C}} (A, A)$, we can take
every $id_A \in Hom_{\mathcal{C}}(A, A)$ as the same identity in
$\mathcal{C}^{op}$. We can verify that this is compatible with $\star$:

$$\begin{aligned}
    \forall A, B & \in Obj (\mathcal{C})        &=& \;  Obj (\mathcal{C}^{op})        , \\
    \exists id_A & \in Hom_{\mathcal{C}} (A, A) &=& \;  Hom_{\mathcal{C}^{op}} (A, A) , \\
    \exists id_B & \in Hom_{\mathcal{C}} (B, B) &=& \;  Hom_{\mathcal{C}^{op}} (B, B) , \\
    \forall f    & \in Hom_{\mathcal{C}} (A, B) &=& \;  Hom_{\mathcal{C}^{op}} (B, A) , \\
    f            & =   f    \circ id_A          &=& \;  id_A \star f                  , \\
    f            & =   id_B \circ    f          &=& \;  f    \star id_B                 \\
\end{aligned}$$

##### 3.1.c) Associativity {#c-associativity .unnumbered}

Using associativity in $\mathcal{C}$, we have:

$$\begin{aligned}
    \forall A, B, C, D & \in Obj (\mathcal{C})        &=& \;  Obj (\mathcal{C}^{op})        , \\
    \forall f          & \in Hom_{\mathcal{C}} (A, B) &=& \;  Hom_{\mathcal{C}^{op}} (B, A) , \\
    \forall g          & \in Hom_{\mathcal{C}} (B, C) &=& \;  Hom_{\mathcal{C}^{op}} (C, B) , \\
    \forall h          & \in Hom_{\mathcal{C}} (C, D) &=& \;  Hom_{\mathcal{C}^{op}} (D, C) , \\
\end{aligned}$$ $$\begin{aligned}
    h \star (g \star f) &=&  h \star (f  \circ g) \\
                        &=& (f \circ  g) \circ h  \\
                        &=&  f \circ  (g \circ h) \\
                        &=&  (g \circ h) \star f  \\
                        &=&  (h \star g) \star f  \\
\end{aligned}$$

Therefore, $\star$ is associative.

We conclude that $\mathcal{C}^{op}$ is a category.

#### 3.2) {#section-23 .unnumbered}

If $A$ is a finite set, how large is $End_{\text{Set}}(A)$ ?

We know that, in Set, $End_{\text{Set}}(A) = (A \to A) = A^A$. From a
previous exercise, we know that $|B^A| = |B|^{|A|}$, therefore
$|End_{\text{Set}}(A)| = |A|^{|A|}$.

#### 3.3) {#section-24 .unnumbered}

Formulate precisely what it means to say that \"$1_a$ is an identity
with respect to composition\" in Example 3.3, and prove this assertion.

Example 3.3 is that of a category over a set $S$ with a (reflexive,
transitive) relation $\sim$, where the objects of the category are the
elements of $S$, and the homset between two elements $a$ and $b$ is the
singleton $(a,b)$ if $a \sim b$, and $\emptyset$ otherwise. Composition
$\circ$ is given by transitivity of $\sim$, where
$(b,c) \circ (a,b) = (a,c)$. Reflexivity gives the identities
($id_a = (a,a)$ for any element $a$).

In this context, to say that \"$1_a$ is an identity with respect to
composition\" means that we can cancel out an element of the form
$(a,a)$ from a composition.

Formally, we have:

$$\forall a,b \in S, (b,b) \circ (a,b) = (a,b) = (a,b) \circ (a,a)$$

proving that $(b,b)$ is indeed a post-identity, and $(a,a)$ a
pre-identity, in this context.

#### 3.4) {#section-25 .unnumbered}

Can we define a category in the style of Example 3.3, using the relation
$<$ on the set $\mathbb{Z}$ ?

(Description of example 3.3 in the exercise 3.3 just above.)

Naively, saying like in example 3.3 \"there is a singleton homset
$\text{Hom}(a,b)$ each time we have $a < b$\", we cannot define such a
category, since $<$ is not reflexive, and we would thus lack identity
morphisms.

However, in a roundabout way, we can define a category over the
*negation* of $<$: \"there is a singleton homset $\text{Hom}(a,b)$ each
time we DO NOT have $a < b$\". Namely this corresponds to the relation
$\ge$, which is, itself, reflexive, transitive (and antisymmetric), and
is a valid instance of the kind of category presented in example 3.3.

In fact, the pair $(\mathbb{Z}, \geq)$ is an instance of what is called
a \"totally ordered set\", which is a more restrictive kind of
\"partially ordered set\" (also called \"poset\" for short).
Consequently, this kind of category is called a \"poset category\".

#### 3.5) {#section-26 .unnumbered}

Explain in what sense Example 3.4 is an instance of the categories
considered in Example 3.3.

(Description of example 3.3 in the exercise 3.3 just above.)

Example 3.4 describes a category $\hat{S}$ where the objects are the
subsets of a set $S$ (equivalently: elements of the powerset
$\mathcal{P}(S)$ of $S$), and morphisms between two subsets $A$ and $B$
of $S$ are singleton (or empty) homsets based on whether the inclusion
is true (or false).

Inclusion of sets, $\subset$, is also an order relation, this time
between the elements of a set of sets (here, $\mathcal{P}(S)$). This
means inclusion is reflexive, transitive, and antisymmetric. This makes
$\hat{S}$ a poset category, and thus another instance of example 3.3.

#### 3.6) {#section-27 .unnumbered}

Define a category $V$ by taking $Obj(V) = \mathbb{N}$, and
$Hom_V(n, m) = Mat_\mathbb{R}(m, n)$, the set of $m \times n$ matrices
with real entries, for all $n, m \in \mathbb{N}$. (I will leave the
reader the task to make sense of a matrix with 0 rows or columns.) Use
product of matrices to define composition. Does this category 'feel'
familiar ?

The formulation of the exercise is strange. It says to use the product
of matrices to define composition, and to have homsets be sets of
matrices, but objects of the category are supposed to be integers. I
don't know of any matrix with real entries that maps an integer to an
integer in this way.

We thus infer that the meaning of the exercise can be one of two things.

Either we suppose the set of objects could rather be understood as
\"something isomorphic to $\mathbb{N}$\", ie, the collection of real
vector spaces with finite bases (ie,
$\forall n \in \mathbb{N}, \mathbb{R}^n$). In which case, this is just
the category of real vector spaces with finite basis (and linear maps as
morphisms), which is a subcategory of the category real vector spaces
(commonly called $Vect_{\mathbb{R}}$). In this context, any morphism
starting from $0 \simeq \mathbb{R}^0 = \{0\}$ is just the injection of
the origin into the codomain; and any morphism ending at $0$ is the
mapping of all elements to the origin.

Otherwise, we understand this as \"yes, the objects of the category are
integers: this means you should ignore the actual content of the
matrices, and instead consider only their effect on the dimensionality
of domains and codomains\". In this case, this category is a complete
directed graph over $\mathbb{N}$ where each edge corresponds to the
change in dimension (from domain to codomain) caused by a given linear
map.

#### 3.7) {#section-28 .unnumbered}

Define carefully objects and morphisms in Example 3.7, and draw the
diagram corresponding to composition.

Example 3.7 (on coslice categories) refers to example 3.5 (on slice
categories). Let's go over slice categories (since example 3.5 asks the
reader to \"check all \[their various properties\]\").

##### 3.7.1) Slice categories {#slice-categories .unnumbered}

Slice categories are categories made by singling out an object (say $A$)
in some parent (larger) category (say $\mathcal{C}$), and studying all
morphisms into that object. These morphisms become the objects of a new
category (ie, for any $Z$ of $\mathcal{C}$, $f \in (Z \to A)$ is an
object of the slice category, called $\mathcal{C}_A$ in this context).
In the slice category, morphisms are defined as those morphism in
$\mathcal{C}$ that preserve composition between 2 morphisms into $A$.

Note that there exist pairs of morphisms $f_1 \in (Z_1 \to A)$ and
$f_2 \in (Z_2 \to A)$ between which there is no morphism that exists in
the slice category. One such example we can make is in
$(Vect_\mathbb{R})_{\mathbb{R}^2}$ (see notes \"On the morphisms of
slice and coslice categories\" for more details).

3.7.1.a) Identity

A generic identity morphism is expressed diagrammatically in
$\mathcal{C}_A$ as:

We can see that since $f = f \circ id_Z$ in $\mathcal{C}$, this is
compatible with the definition of a (pre-/right-)unit morphism in
$\mathcal{C}_A$. Also, since the only maps post-$f$ are maps from
$A \to A$, we have $id_A$ as the (post-/left-)unit for every morphism
$f$ (ie, $f = id_A \circ f$.

3.7.1.b) Composition

Taking 3 objects of the slice category ($f_1 \in (Z_1 \to A)$,
$f_2 \in (Z_2 \to A)$ and $f_3 \in (Z_3 \to A)$), and two morphisms
($\sigma_A$ mapping $f_1$ to $f_2$ via a $\mathcal{C}$-morphism
$\sigma \in (Z_1 \to Z_2)$, and $\tau_A$ mapping $f_2$ to $f_3$ via a
$\mathcal{C}$-morphism $\tau \in (Z_2 \to Z_3)$), we have that
$f_1 = f_2 \circ \sigma$ and $f_2 = f_3 \circ \tau$. This is expressed
as the following commutative diagram.

Composition of morphisms is then defined as $\tau_A \circ_A \sigma_A$ as
a mapping from $f_1$ to $f_3$, such that
$f_1 = f_3 \circ (\tau \circ \sigma)$. This can be understood through
the following commutative diagram:

Which commutes, because we have:

$$\begin{aligned}
    f_1 &=&  f_2              \circ \sigma  \\
        &=& (f_3 \circ  \tau) \circ \sigma  \\
        &=&  f_3 \circ (\tau  \circ \sigma)
\end{aligned}$$

Thus, we have a working composition of morphisms.

3.7.1.c) Associativity

We take 4 objects of the slice category ($f_1 \in (Z_1 \to A)$,
$f_2 \in (Z_2 \to A)$, $f_3 \in (Z_3 \to A)$ and $f_4 \in (Z_4 \to A)$),
and three morphisms ($\sigma_A$ mapping $f_1$ to $f_2$, $\tau_A$ mapping
$f_2$ to $f_3$, and $\upsilon_A$ mapping $f_3$ to $f_4$). Using
composition defined as above, we have

$$\begin{aligned}
f_1 &=& f_4 \circ ( \upsilon \circ (\tau  \circ \sigma)) \\
    &=& f_4 \circ ((\upsilon \circ  \tau) \circ \sigma ) \\
\Rightarrow && \\
& &  \upsilon_A \circ (\tau_A  \circ \sigma_A) \\
&=& (\upsilon_A \circ  \tau_A) \circ \sigma_A
\end{aligned}$$

Through associativity in $\mathcal{C}$.

##### 3.7.2) Coslice categories {#coslice-categories .unnumbered}

A coslice category $\mathcal{C}^A$ is similar, except it takes the
morphisms coming *from* a chosen object $A$, rather than those going
*to* this object $A$. Below is a commutative diagram in the style of the
one of the textbook for slice categories.

We can similarly show that this also defines a category.

[3.7.2.a) Identity]{.underline}

A generic identity morphism is expressed diagrammatically in
$\mathcal{C}^A$ as:

We can see that since $f = id_Z \circ f$ in $\mathcal{C}$, this is
compatible with the definition of a (post-/left-)unit morphism in
$\mathcal{C}^A$. Also, since the only maps pre-$f$ are maps from
$A \to A$, we have $id_A$ as the (pre-/right-)unit for every morphism
$f$ (ie, $f = f \circ id_A$.

[3.7.2.b) Composition]{.underline}

Taking 3 objects of the slice category ($f_1 \in (A \to Z_1)$,
$f_2 \in (A \to Z_2)$ and $f_3 \in (A \to Z_3)$), and two morphisms
($\sigma^A$ mapping $f_1$ to $f_2$ via a $\mathcal{C}$-morphism
$\sigma \in (Z_1 \to Z_2)$, and $\tau^A$ mapping $f_2$ to $f_3$ via a
$\mathcal{C}$-morphism $\tau \in (Z_2 \to Z_3)$), we have that
$f_1 = \sigma \circ f_2$ and $f_2 = \tau  \circ f_3$. This is expressed
as the following commutative diagram.

Composition of morphisms is then defined as $\tau^A \circ^A \sigma^A$ as
a mapping from $f_1$ to $f_3$, such that
$f_3 = (\tau \circ \sigma) \circ f_1$. This can be understood through
the following commutative diagram:

Which commutes, because we have:

$$\begin{aligned}
    f_3 &=&  \tau \circ                f_2  \\
        &=&  \tau \circ (\sigma  \circ f_1) \\
        &=& (\tau \circ  \sigma) \circ f_1
\end{aligned}$$

Thus, we have a working composition of morphisms.

[3.7.2.c) Associativity]{.underline}

We take 4 objects of the slice category ($f_1 \in (A \to Z_1)$,
$f_2 \in (A \to Z_2)$, $f_3 \in (A \to Z_3)$ and $f_4 \in (A \to Z_4)$),
and three morphisms ($\sigma^A$ mapping $f_1$ to $f_2$, $\tau^A$ mapping
$f_2$ to $f_3$, and $\upsilon^A$ mapping $f_3$ to $f_4$). Using
composition defined as above, we have

$$\begin{aligned}
f_4 &=& ( \upsilon \circ (\tau  \circ \sigma)) \circ f_1 \\
    &=& ((\upsilon \circ  \tau) \circ \sigma ) \circ f_1 \\
\Rightarrow && \\
    & &  \upsilon^A \circ (\tau^A  \circ \sigma^A) \\
    &=& (\upsilon^A \circ  \tau^A) \circ \sigma^A
\end{aligned}$$

Through associativity in $\mathcal{C}$.

#### 3.8) {#section-29 .unnumbered}

A subcategory $\mathcal{C'}$ of a category $\mathcal{C}$ consists of a
collection of objects of $\mathcal{C}$, with morphisms
$Hom_\mathcal{C'} (A, B) \subseteq Hom_\mathcal{C} (A, B)$ for all
objects $A$, $B$ in $Obj(\mathcal{C'})$, such that identities and
compositions in $\mathcal{C}$ make $\mathcal{C'}$ into a category. A
subcategory $\mathcal{C'}$ is *full* if
$Hom_\mathcal{C'} (A, B) = Hom_\mathcal{C} (A, B)$ for all $A$, $B$ in
$Obj(\mathcal{C'})$. Construct a category of *infinite sets* and explain
how it may be viewed as a full subcategory of $\mathbf{Set}$.

To put it less technically, a \"subcategory\" $\mathcal{C'}$ is just
\"picking only certain items of a base category $\mathcal{C}$, and
making sure that things stay closed uneder morphism composition\". It is
\"full\" if *all* morphisms between the objects that remain are also
conserved.

We can construct a category $\mathbf{InfSet}$ of infinite sets by taking
all the objects $A$ of $\mathbf{Set}$ such that
$\nexists n \in \mathbb{N}, |A| = n$, and only homsets between these
objects. This is clearly a subcategory of $\mathbf{Set}$, since it
inherits all identity morphisms, composition works the same, and so does
associativity; also, restricting the choice of homsets makes it so that
the category is closed (you can't reach a finite set via a homset that
went from an infinite to a finite set).

For this category to not be full, there would need to be some homset
that loses a morphism, or fully disappears, in the ordeal. However,
there is no restriction as to the kind of morphism that is conserved, so
any homset that is kept is identical to its original version. Finally,
homsets between infinite sets are also infinite sets, so they don't
disappear in this operation.

Consequently $\mathbf{InfSet}$ defined as such is a full subcategory of
$\mathbf{Set}$.

#### 3.9) {#section-30 .unnumbered}

An alternative to the notion of multiset introduced in §2.2 is obtained
by considering sets endowed with equivalence relations; equivalent
elements are taken to be multiple instances of elements 'of the same
kind'. Define a notion of morphism between such enhanced sets, obtaining
a category $\mathbf{MSet}$ containing (a 'copy' of) $\mathbf{Set}$ as a
full subcategory. (There may be more than one reasonable way to do this!
This is intentionally an open-ended exercise.) Which objects in
$\mathbf{MSet}$ determine ordinary multisets as defined in §2.2, and
how? Spell out what a morphism of multisets would be from this point of
view. (There are several natural notions of morphisms of multisets. Try
to define morphisms in MSet so that the notion you obtain for ordinary
multisets captures your intuitive understanding of these objects.)
\[§2.2, §3.2, 4.5\]

Let us recall how multisets were defined in §2.2. Since duplicate
elements do not exist in sets, multisets were instead defined as
functions from a set $S$ to $\mathbb{N}*$, the set of (nonzero) positive
integers. This allows each element in $S$ to have a \"count\", thereby
encoding the intuitive notion of multiset. A similar, and equivalent
(isomorphic), way of defining it is *via* pairs
$(s, n) \in S \times \mathbb{N}*$, which is simpler to think about.
We'll call this category $\mathbf{CMSet}$, for \"count multiset\" (TODO:
probably has a conventional and better name, but I don't know it). As
for morphisms in $\mathbf{CMSet}$, we can consider that for any
multisets $A = S_A \times \mathbb{N}*$ and $B = S_B \times \mathbb{N}*$,
the homset from $A$ to $B$ is simply the set functions from
$S_A \times \mathbb{N}*$ to $S_B \times \mathbb{N}*$ as usual.

We first notice that if we restrict $\mathbf{CMSet}$ to only the objects
for which all elements have a count of $1$, and where morphisms only
ever output to $\{ 1 \}$ in the second coordinate (a subcategory we can
call $\mathbf{C1MSet}$, for example), we get a \"copy\" of
$\mathbf{Set}$: $\mathbf{C1MSet}$ and $\mathbf{Set}$ are isomorphic in
$\mathbf{Cat}$. This is a full subcategory because there are no
morphisms that map counts to anything else than $\{ 1 \}$ if we restrict
our objects to this form; so all morphisms between the kept objects are
also kept.

Now let us do a similar construction, but based on equivalence classes
instead. We know that each equivalence class over a set corresponds
uniquely to a partition of that set. By considering only these
partitions (these \"sets of sets\") as objects, we can build a category
$\mathbf{EMSet}$ (for \"equivalence multiset\"). The \"count\"
corresponds simply to the cardinal of a top-level element in the
partition. For example, the top-level elements of
$M = \{ S_1, S_2, S_3 \}= \{ \{a\}, \{b, c\}, \{d, e, f\} \}$ would be
understood to have counts $|S_1| = 1$, $|S_2| = 2$ and $|S_3| = 3$
respectively.

As for morphisms in $\mathbf{EMSet}$, they simply map each top-level
element of the domain multiset (a distinct subset of the original set)
to some other top-level elements in the codomain multiset. This has
precisely the same effect as mapping pairs of \"value and count\" as
seen in the previous $\mathbf{CMSet}$ construction.

In this example, any set itself, when \"injected\" (by a functor) into
$\mathbf{EMSet}$ would just nest all of its elements into singletons.
I.e., $S = \{ a, b, c \}$ in $\mathbf{Set}$ would become
$S = \{ \{a\}, \{b\}, \{c\} \}$ in $\mathbf{EMSet}$. This also shows how
restricting $\mathbf{EMSet}$ to \"only objects that are a set of
(toplevel) singletons\" makes $\mathbf{EMSet}$ have a \"copy\" of
$\mathbf{Set}$ as a full subcategory (for similar arguments as above).

Yet another example could be something akin to polynomials with integer
coefficients on freeform indeterminates of degree 1 (which would be our
set elements); raising the operators one rank, a product of freeform
variables with integer powers (multiplicities), etc.

#### 3.10) {#section-31 .unnumbered}

Since the objects of a category $\mathcal{C}$ are not (necessarily)
sets, it is not clear how to make sense of a notion of 'subobject' in
general. In some situations it does make sense to talk about subobjects,
and the subobjects of any given object $A$ in $\mathcal{C}$ are in
one-to-one correspondence with the morphisms $A \to \Omega$ for a fixed,
special object $\Omega$ of $\mathcal{C}$, called a subobject classifier.
Show that $\mathbf{Set}$ has a subobject classifier.

We define the set $\mathbb{B} = \{ 0, 1 \}$, aka the binary alphabet or
booleans, as the subobject classifier of $\mathbf{Set}$. For any subset
$A$ of $B$, there is a unique map $f: B \to \mathbb{B}$, such that
$\forall b \in B, f(b) = 1 \Leftrightarrow b \in A$ (otherwise
$f(b) = 0$, of course, as the equivalence and lack of alternatives to
$0$ as an output imply). The map $f$ always fully describes $A$ from its
relationship with $B$.

#### 3.11) {#section-32 .unnumbered}

Draw the relevant diagrams and define composition and identities for the
category $\mathcal{C}^{A,B}$ mentioned in Example 3.9. Do the same for
the category $\mathcal{C}^{\alpha, \beta}$ mentioned in Example 3.10.
\[§5.5, 5.12\]

For lack of a better term, we will refer to the categories of the form
$\mathcal{C}_{A,B}$ represented by Example 3.9 as \"bi-slice
categories\". The first part of the exercise is thus asking us to define
and explain what \"bi-coslice categories\" (of the form
$\mathcal{C}^{A,B}$) are.

Similarly, we will refer to the categories of the form
$\mathcal{C}_{\alpha, \beta}$ represented by Example 3.10 as \"fibered
bi-slice categories\". The second part of the exercise is thus asking us
to define and explain what \"fibered bi-coslice categories\" (of the
form $\mathcal{C}^{\alpha, \beta}$) are.

We will, of course, attempt to make more formal and pedagogical all
definitions broached in the textbook's examples as well.

##### 3.11.1) Bi-slice categories {#bi-slice-categories .unnumbered}

[3.11.1.a) Objects and morphisms]{.underline}

To make a bi-slice category $\mathcal{C}_{A,B}$, we pick 2 objects $A$
and $B$ of a base category $\mathcal{C}$, and consider for all other
objects $Z$ of $\mathcal{C}$, all pairs of morphisms
$(f, g) \in (Z \to A) \times (Z \to B)$. These pairs of morphisms are
the objects of the bi-slice category $\mathcal{C}_{A,B}$. Morphisms
$\sigma_{A,B}$ are defined from an object
$p_1 = (f_1, g_1) \in (Z_1 \to A) \times (Z_1 \to B)$ to an object
$p_2 = (f_2, g_2) \in (Z_2 \to A) \times (Z_2 \to B)$ so that we have
both $f_1 = f_2 \circ \sigma$ and $g_1 = g_2 \circ \sigma$, for some
$\sigma \in (Z_1 \to Z_2)$.

A generic object in $\mathcal{C}_{A,B}$ is of the form:

[3.11.1.b) Morphisms]{.underline}

Morphisms are defined between objects as

such that the following diagram commutes

[3.11.1.c) Identity]{.underline}

It is clear that identity morphisms exist for all objects, simply by
taking $Z = Z_1 = Z_2$, $f_1 = f_2$, $g_1 = g_2$ and $\sigma = id_Z$, in
the diagram above.

[3.11.1.d) Composition]{.underline}

Let be 3 objects of $\mathcal{C}_{A,B}$, which we will name $p_1$, $p_2$
and $p_3$ (and define with the respective $(Z_n, f_n, g_n)$ triplet for
$p_n$).

Composition $\tau_{A, B} \circ \sigma_{A, B} = p_1 \mapsto p_3$ of two
morphisms $\sigma_{A, B} = p_1 \mapsto p_2$ and
$\tau_{A, B} = p_2 \mapsto p_3$ is defined so that the following diagram
commutes.

[3.11.1.e) Associativity]{.underline}

Associativity follows from associativity of morphisms in $\mathcal{C}$,
similarly to what was done for slice categories in exercise 3.7 .

##### 3.11.2) Bi-coslice categories {#bi-coslice-categories .unnumbered}

[3.11.2.a) Objects and morphisms]{.underline}

To make a bi-coslice category $\mathcal{C}^{A,B}$, we similarly pick 2
objects $A$ and $B$ of our base category $\mathcal{C}$, but instead
consider, for all other objects $Z$ of $\mathcal{C}$, all pairs of
morphisms $(f, g) \in (A \to Z) \times (B \to Z)$.

A generic object in $\mathcal{C}^{A,B}$ is of the form:

[3.11.2.b) Morphisms]{.underline}

Morphisms are defined between objects as

such that the following diagram commutes

[3.11.2.c) Identity]{.underline}

It is clear that identity morphisms exist for all objects, simply by
taking $Z = Z_1 = Z_2$, $f_1 = f_2$, $g_1 = g_2$ and $\sigma = id_Z$, in
the diagram above.

[3.11.2.d) Composition]{.underline}

Let be 3 objects of $\mathcal{C}^{A,B}$, which we will name $p_1$, $p_2$
and $p_3$ (and define with the respective $(Z_n, f_n, g_n)$ triplet for
$p_n$).

Composition $\tau^{A, B} \circ \sigma^{A, B} = p_1 \mapsto p_3$ of two
morphisms $\sigma^{A, B} = p_1 \mapsto p_2$ and
$\tau^{A, B} = p_2 \mapsto p_3$ is defined so that the following diagram
commutes.

[3.11.2.e) Associativity]{.underline}

Associativity follows from associativity of morphisms in $\mathcal{C}$,
similarly to what was done for slice categories in exercise 3.7 .

##### 3.11.3) Fibered bi-slice categories {#fibered-bi-slice-categories .unnumbered}

[3.11.3.a) Objects]{.underline}

To build a fibered bi-slice category $\mathcal{C}_{\alpha, \beta}$, one
takes a base category $\mathcal{C}$, as well as a fixed pair of
morphisms $\alpha : A \to C$ and $\beta : B \to C$ in $\mathcal{C}$,
that point to a common object $C$ of $\mathcal{C}$. Our basic \"fixed
construct\" from $\mathcal{C}$ looks like so:

The role of the category $\mathcal{C}_{\alpha, \beta}$ is now to study
the morphisms into this construct. A generic object from this new
category looks like so:

such that the diagram commutes. This means that valid object in
$\mathcal{C}_{\alpha, \beta}$ are triplets $(Z, f, g)$, with
$f : Z \to A$ and $g : Z \to B$, such that
$\alpha \circ f = \beta \circ g$. In a caricatural way, this boils down
to studying \"the comparison of the different paths one can use to reach
$C$, knowing that the last steps are on one hand, $\alpha$, and on the
other, $\beta$\".

[3.11.3.b) Morphisms]{.underline}

Morphisms are defined between objects as:

such that the following diagram commutes

[3.11.3.c) Identity]{.underline}

Once again, it is clear that identity morphisms exist for all objects,
simply by taking $Z = Z_1 = Z_2$, $f_1 = f_2$, $g_1 = g_2$ and
$\sigma = id_Z$, in the diagram above.

[3.11.3.d) Composition]{.underline}

Let be 3 objects of $\mathcal{C}_{\alpha, \beta}$, which we will name
$p_1$, $p_2$ and $p_3$ (and define with the respective $(Z_n, f_n, g_n)$
triplet for $p_n$).

Composition
$\tau_{\alpha, \beta} \circ \sigma_{\alpha, \beta} = p_1 \mapsto p_3$ of
two morphisms $\sigma_{\alpha, \beta} = p_1 \mapsto p_2$ and
$\tau_{\alpha, \beta} = p_2 \mapsto p_3$ is defined so that the
following diagram commutes.

[3.11.3.e) Associativity]{.underline}

Associativity follows from associativity of morphisms in $\mathcal{C}$,
similarly to what was done for slice categories in exercise 3.7 .

##### 3.11.4) Fibered bi-coslice categories {#fibered-bi-coslice-categories .unnumbered}

[3.11.4.a) Objects]{.underline}

To build a fibered bi-coslice category $\mathcal{C}^{\alpha, \beta}$,
one takes a base category $\mathcal{C}$, as well as a fixed pair of
morphisms $\alpha : C \to A$ and $\beta : C \to B$ in $\mathcal{C}$,
that originate from a common object $C$ of $\mathcal{C}$. Our basic
\"fixed construct\" from $\mathcal{C}$ looks like so:

The role of the category $\mathcal{C}^{\alpha, \beta}$ is now to study
the morphisms from this construct. A generic object from this new
category looks like so:

such that the diagram commutes. This means that valid object in
$\mathcal{C}^{\alpha, \beta}$ are triplets $(Z, f, g)$, with
$f : A \to Z$ and $g : B \to Z$, such that
$f \circ \alpha = g \circ \beta$. In a caricatural way, this boils down
to studying \"the comparison of the different paths one can build by
starting from $C$, knowing that the choice of first step is on one hand,
$\alpha$, and on the other, $\beta$\".

[3.11.4.b) Morphisms]{.underline}

Morphisms are defined between objects as:

such that the following diagram commutes

[3.11.4.c) Identity]{.underline}

Once again, it is clear that identity morphisms exist for all objects,
simply by taking $Z = Z_1 = Z_2$, $f_1 = f_2$, $g_1 = g_2$ and
$\sigma = id_Z$, in the diagram above.

[3.11.4.d) Composition]{.underline}

Let be 3 objects of $\mathcal{C}^{\alpha, \beta}$, which we will name
$p_1$, $p_2$ and $p_3$ (and define with the respective $(Z_n, f_n, g_n)$
triplet for $p_n$).

Composition
$\tau^{\alpha, \beta} \circ \sigma^{\alpha, \beta} = p_1 \mapsto p_3$ of
two morphisms $\sigma^{\alpha, \beta} = p_1 \mapsto p_2$ and
$\tau^{\alpha, \beta} = p_2 \mapsto p_3$ is defined so that the
following diagram commutes.

[3.11.4.e) Associativity]{.underline}

Associativity follows from associativity of morphisms in $\mathcal{C}$,
similarly to what was done for slice categories in exercise 3.7 .

### Section 4) {#section-4-1 .unnumbered}

#### 4.1) {#section-33 .unnumbered}

Composition is defined for *two* morphisms. If more than 2 morphisms are
given, one may compose them in several ways, so that every step only
consists in composing 2 morphisms. Prove that for any such valid
sequence of morphisms, the order of parentheses doesn't matter.

This boils down to showing that associativity is a global property, that
doesn't just make parentheses meaningless when there are 3 elements and
2 operators between them, but in general $n$ elements with $(n-1)$
operators between them.

Note: A useful way of visualizing this is representing the order of
operations as a binary tree, and noticing that applying associativity
(forwards or backwards) is just a tree rotation (resp. right or left) at
a given node. Then it is easy to show that one can always obtain a
\"left comb binary tree\". Since every choice of parentheses is equal to
this left comb choice, and equality is transitive, every choice of
parentheses is equal to every other choice.

To be more rigorous, we will proceed by induction.

[Hypothesis:]{.underline} $P(n)$ = \"for a given $n$, for
$f_n f_{n-1} \cdot f_1$ any valid, composable, ordered sequence of
morphisms in our base category $\mathcal{C}$, any choice $H$ of
parentheses to compose elements of this sequence 2-by-2, giving a
formula $s_H$, will lead to the same result, which can be seen by always
having $s_H = (\cdot(f_n f_{n-1}) \cdot) f_1$\".

[Initialization:]{.underline} We initialize at $n = 3$; the validity is
immediate as it is precisely the definition of associativity.

[Heredity:]{.underline} We suppose the hypothesis $P(n)$ true for a
given $n \geq 3$; let us show that this implies that the hypothesis is
true for $P(n+1)$.

What this means is that, no matter the composable ordered sequence
$f_n f_{n-1} \cdot f_1$ of $n$ functions, for a fixed $n$, the order of
parentheses does not matter. Note that though $n$ is chosen and fixed;
the statement is true for EVERY (ordered, composable) sequence of
functions. We add a new function $g$ to this sequence. By a simple
renaming of the functions, we deduce that it doesn't matter where we
insert $g$, so we'll insert it at the very right to simplify our
argument, giving us the sequence $f_n f_{n-1} \cdot f_1 g$.

Here, there are 3 cases. Either:

-   $g$ is part of the last composition (i.e., it's not in a
    semantically necessary parenthethical grouping; it can be made
    external to all parentheses),

-   $g$ is part of the first composition (i.e., the first operation is
    $(f_1 g)$)

-   it isn't either (it's inside some non-removable parentheses, and
    needs to be composed earlier on, but not as the first operation).

If $g$ is part of the last composition, then by applying the hypothesis
$P(n)$ to the terms $f_n f_{n-1} \cdot f_1$, we immediately find that
our new sequence can be made equal to
$((\cdot(f_n f_{n-1}) \cdot) f_1) g$, which is precisely what we wanted
for $P(n+1)$.

If $g$ is part of the first composition, we isolate it so that it isn't
anymore. To do so, we apply \"backwards\" associativity on the grouping
of terms $F_k (f_1 g)$ in order to obtain $(F_k f_1) g$, where $F_k$ is
the appropriate choice of $(f_k \cdot f_2)$ such that associativity can
be applied (with $2 \leq k \leq n$). This makes it so that our problem
is identical to our final case, solved just below.

If $g$ is part of neither the first nor last composition, then we
consider the innermost composition $(f_k f_{k-1})$ to be a single
element $h$. We now have a sequence of only $n$ terms. We apply our
hypothesis $P(n)$. This makes $g$ the outermost right term, part of the
last composition. Unravelling $h$ back into two members, we see that we
are back at our initial case, with an arbitrary order of parentheses for
the $f_n f_{n-1} \cdot f_1$ terms, and $g$ outermost. We already saw
that this implied $P(n+1)$.

[Conclusion:]{.underline} since we have initialization and heredity of
our hypothesis in all cases, we can conclude by induction that it is
true for all $n \geq 3$.

#### 4.2) {#section-34 .unnumbered}

In Example 3.3 we have seen how to construct a category from a set
endowed with a relation, provided the latter is reflexive and
transitive. For what types of relations is the corresponding category a
groupoid (cf. Example 4.6) ?

We remind example 4.6 : a groupoid is a category in which every morphism
is an isomorphism. This means that every morphism needs to be 2-way
invertible.

In this context, this means that for every morphism $a \sim b$, there
should be a corresponding inverse morphism $b \sim a$. This property is
precisely the symmetry of a relation.

This means that all sets with an equivalence relation can be
reconstructed into a groupoid.

#### 4.3) {#section-35 .unnumbered}

Let $A$, $B$ be objects of a category $\mathcal{C}$, and
$f \in Hom_{\mathcal{C}} (A, B)$ a morphism. Prove that if $f$ has a
pre-inverse, then $f$ is an epimorphism. Show that the converse does not
hold, by giving an explicit example of a category and an epimorphism
without a pre-inverse.

##### 4.3.a) {#a-1 .unnumbered}

$f$ has a pre-inverse $\Rightarrow$ $f$ is an epimorphism

Let $\mathcal{C}$ be a category. Let $f \in Hom_{\mathcal{C}} (A, B)$,
having some pre-inverse which we'll call
$g \in Hom_{\mathcal{C}} (B, A)$:

Let $Z$ be an arbitrary object of $\mathcal{C}$, and
$\beta', \beta" \in Hom_{\mathcal{C}} (B, Z)$:

$$\begin{aligned}
    \beta' \circ f = \beta'' \circ f
        & \Rightarrow (\beta' \circ  f) \circ g  = (\beta'' \circ  f) \circ g  \\
        & =            \beta' \circ (f  \circ g) =  \beta'' \circ (f  \circ g) \\
        & =            \beta' \circ id_B         =  \beta'' \circ id_B \\
        & =            \beta'                    =  \beta''
\end{aligned}$$

This means that $f$ is an epimorphism.

##### 4.3.b) {#b-1 .unnumbered}

$f$ is an epimorphism $\;\not\!\!\!\Rightarrow$ $f$ has a pre-inverse

As was mentioned in the text, \"order\" categories (poset categories)
where there's only at most one morphism between any two objects makes it
so that every morphism is trivially an epimorphism. However, only
identities have any kind of inverse (since they are isomorphisms, they
are their own inverse).

See also [here](https://ncatlab.org/nlab/show/partial+order) and
[here](https://math.stackexchange.com/questions/81123/examples-of-categories-where-epimorphism-does-not-have-a-right-inverse-not-surj).

#### 4.4) {#section-36 .unnumbered}

Prove that the composition of two monomorphisms is a monomorphism.
Deduce that one can define a subcategory $\mathcal{C}_{mono}$ of a
category $\mathcal{C}$ by taking the same objects as in $\mathcal{C}$,
and defining $Hom_{\mathcal{C}_{mono}} (A, B)$ to be the subset of
$Hom_\mathcal{C} (A, B)$ consisting of monomorphisms, for all objects
$A$, $B$. (Cf. Exercise 3.8; of course, in general $\mathcal{C}_{mono}$
is not full in $\mathcal{C}$.) Do the same for epimorphisms. Can you
define a subcategory $\mathcal{C}_{nonmono}$ of $\mathcal{C}$ by
restricting to morphisms that are not monomorphisms?

##### 4.4.a) {#a-2 .unnumbered}

Mono

Let be $f \in Hom_{\mathcal{C}} (A, B)$ and
$g \in Hom_{\mathcal{C}} (B, C)$ be monomorphisms. Let us show that
$g \circ f$ is also a monomorphism.

Let $Z$ be an arbitrary object of $\mathcal{C}$, and
$\alpha', \alpha" \in Hom_{\mathcal{A}} (Z, A)$:

$$\begin{aligned}
    (g \circ f) \circ \alpha' = (g \circ f) \circ \alpha''
        & = g \circ (f \circ \alpha') = g \circ (f \circ \alpha'') \\
        & \Rightarrow f \circ \alpha' = f \circ \alpha'' \text{ because $g$ is mono} \\
        & \Rightarrow         \alpha' =         \alpha'' \text{ because $f$ is mono}
\end{aligned}$$

This means that the composition of 2 monomorphisms is always an
monomorphism. We can thus make a subcategory. Taking all objects,
properties, and homsets of $\mathcal{C}$, but restricting the homsets
only to the monomorphisms, we know that this makes a new category
$\mathcal{C}_{mono}$ since it is closed under composition, has
identities (which are iso, and *a fortiori* mono) and associativity.

##### 4.4.b) {#b-2 .unnumbered}

Epi

Let be $f \in Hom_{\mathcal{C}} (A, B)$ and
$g \in Hom_{\mathcal{C}} (B, C)$ be epimorphisms. Let us show that
$g \circ f$ is also a epimorphism.

Let $Z$ be an arbitrary object of $\mathcal{C}$, and
$\beta', \beta" \in Hom_{\mathcal{C}} (C, Z)$:

$$\begin{aligned}
    \beta' \circ (g \circ f) = \beta'' \circ (g \circ f)
        & = (\beta' \circ g) \circ f = (\beta'' \circ g) \circ f \\
        & \Rightarrow \beta' \circ g =  \beta'' \circ g \text{ because $f$ is epi} \\
        & \Rightarrow \beta'         =  \beta''         \text{ because $g$ is epi}
\end{aligned}$$

This means that the composition of 2 epimorphisms is always an
epimorphism. We can thus make a subcategory. Taking all objects,
properties, and homsets of $\mathcal{C}$, but restricting the homsets
only to the epimorphisms, we know that this makes a new category
$\mathcal{C}_{epi}$ since it is closed under composition, has identities
(which are iso, and *a fortiori* epi) and associativity.

##### 4.4.c) {#c .unnumbered}

Nonmono and nonepi

We could consider the fact that (TODO prove lol) we can't obtain a
monomorphism from the composition of two non-monomorphisms (you need at
least one monomorphism in the mix). However, the real problem is
identities. Identities are iso, and thus mono. You can't make a category
without identities, so there is no such $\mathcal{C}_{nonmono}$. the
same reasoning applies to $\mathcal{C}_{nonepi}$.

#### 4.5) {#section-37 .unnumbered}

Give a concrete description of monomorphisms and epimorphisms in the
category $\mathbf{MSet}$ you constructed in Exercise 3.9. (Your answer
will depend on the notion of morphism you defined in that exercise!)

We'll use our $\mathbf{CMSet}$ construction, where elements of multisets
consisted of a pair of the set-element and its count in the multiset.

We recall that in the way we formulated this, morphisms were just simple
set functions on \"(element, count)\" pairs (i.e., returning any other
\"(element, count)\" pair of the codomain). Let be a morphism of
multisets $f \in (A \to B)$. Labelling the elements of the domain $A$ as
$a_i$ and of the codomain $B$ as $b_j$ with $i \in I$, $j \in J$, and
$I, J$ any two indexing sets such that $card(A) = card(I)$ and
$card(B) = card(J)$, we can see that $A$ and $B$ now just look like
\"normal\" sets.

We now simply recycle the notion of injections and surjections. These
form our monomorphisms and epimorphisms respectively.

### Section 5) {#section-5-1 .unnumbered}

#### 5.1) {#section-38 .unnumbered}

Prove that a final object in a category $\mathcal{C}$ is initial in the
opposite category $\mathcal{C}^{op}$

Let $\mathcal{C}$ be a category. Let $\mathcal{C}^{op}$ be the dual
category on $\mathcal{C}$. Let $F$ be a final object in $\mathcal{C}$.
This means that for every object $Z$ in $\mathcal{C}$, there is a single
morphism from $Z$ to $F$. We will call this morphism $f_Z$
(respectively).

We remind how we defined composition in $\mathcal{C}^{op}$ as $\star$,
respecting: $$\begin{aligned}
    & \forall f \in Hom_{\mathcal{C}^{op}} (B, A) = Hom_{\mathcal{C}} (A, B), \\
    & \forall g \in Hom_{\mathcal{C}^{op}} (C, B) = Hom_{\mathcal{C}} (B, C), \\
    & \exists h \in Hom_{\mathcal{C}^{op}} (C, A) = Hom_{\mathcal{C}} (A, C), \\
    & f \star g \coloneqq g \circ f = h
\end{aligned}$$

In this case, we see that
$\forall Z \in Obj(\mathcal{C}^{op}) = Obj(\mathcal{C}), f_Z \in Hom_{\mathcal{C}^{op}} (F, Z) = Hom_{\mathcal{C}} (Z, F)$.
This implies that the homset $Hom_{\mathcal{C}^{op}} (F, Z)$ contains a
single morphism, $f_Z$. This means that $F$ is initial in
$mathcal{C}^{op}$.

#### 5.2) {#section-39 .unnumbered}

Prove that $\emptyset$ is the *unique* initial object in **Set**.

First we will prove that it is initial, then that it is unique.

Initiality: we take an arbitrary set $Z$ in **Set**. We wish to study
$Hom_{\text{\textbf{Set}}}(\emptyset, Z) = Z^\emptyset$. We recall that
functions (in category theory) are defined as \"applications\" /
\"mappings\" are in traditional set theory (i.e., as a relation between
sets where every antecedent in the domain has a singleton image in the
codomain; the key point being that \"no input has no result when passed
through the function\"). Let $I$ be an initial element in **Set**. We
write $|I| = n$ and $|Z| = m$. We know that $|Z^I| = |Z|^{|I|} = m^n$.
For $I$ to be initial, this is true if and only if $m^n = 1$ for all
$m$, and so if and only if $n = 0$. We recall that the empty set is the
only set with $|\emptyset| = 0$, therefore $I = \emptyset$.

Now this is already enough to prove unicity, but let us spell it out for
pedagogy's sake.

Unicity: We recall that two objects of **Set** are isomorphic if, and
only if, there exists a bijection between them. This is equivalent to
saying that two sets have the same cardinal. We once again recall that
the empty set is the only set with $|\emptyset| = 0$; there are no
bijections relating to the empty set, other than its identity, the
unique morphism in $Hom_{\text{\textbf{Set}}}(\emptyset, \emptyset)$ .
Using proposition 5.4 (that terminal objects are unique
up-to-isomorphism), we finally deduce that $\emptyset$ is the unique
initial object in **Set**.

NB: the unique function in $Z^\emptyset$ is always the empty function.

#### 5.3) {#section-40 .unnumbered}

Prove that final objects are unique up to isomorphism.

Let us suppose we have a category $\mathcal{C}$ with two final objects,
$F_1$ and $F_2$.

For every object $A$ of $\mathcal{C}$ there is at least one element in
$Hom_{\mathcal{C}} (A, A)$, namely the identity $1_A$. If $F$ is final,
then there is a unique morphism $F \to F$, which therefore must be the
identity $1_F$.

Now assume $F_1$ and $F_2$ are both final in $\mathcal{C}$. Since $F_1$
is final, there is a unique morphism $f : F_2 \to F_1$ in $\mathcal{C}$.
Since $F_2$ is final, there is a unique morphism $g : F_1 \to F_2$ in
$\mathcal{C}$. Consider $gf : F_1 \to F_1$ ; as observed, necessarily
$gf = 1_{F_2}$ since $F_1$ is final. By the same token $fg = 1{F_1}$,
proving $f$ is an isomorphism. Thus $F_1 \simeq F_2$.

#### 5.4) {#section-41 .unnumbered}

What are initial and final objects in the category of \"pointed sets\"
(Example 3.8)? Are they unique?

We recall that a pointed set is just a regular set with a special,
identified point, and that the category of pointed sets **Set\*** is
built upon the same objects as **Set**, but where each object $A$ in
**Set** is multiplied into $|A|$ copies of itself in **Set\*** (one for
each choice of special point; this implies that the empty set is not a
part of **Set\***, since it has no point). Morphisms in **Set\*** are
set functions, but with the restriction of mapping the special point in
the domain to the special point in the codomain.

Given this information, we will prove that the initial and final objects
in **Set\*** are the singleton sets.

Let $(O, o)$ be a singleton set in **Set\***. Let $o$ be the single
element of $O$; it is necessarily also the special point, as there is no
other choice. For any codomain $(Z, z_0)$ in **Set\***, the condition
that \"special points map to special points\" restricts our choice of
function to the unique function ${(o, z_0)}$, thus, $O$ is initial. If
$O$ had more than one element, there would exist some $Z$
(non-singletons) for which the other element would allow another degree
of freedom (and thus $O$ would not be initial).

Similarly, now studying $Z$ as a domain and $O$ as a codomain, we see
that that only function from $Z$ to $O$ is (like in **Set**) the
function which maps everything (including $Z$'s special point) to $o$.
Thus, $O$ is final. If $O$ had more than one element, there would
similarly be many choices for any $Z$ of cardinal $\geq 2$, so long as
the special point maps to the special point.

Every singleton pointed set is both initial and final in **Set\*** and
is thus a zero object. These are also the only such pointed sets.

#### 5.5) {#section-42 .unnumbered}

What are the final objects in the category considered in §5.3?

The category considered in paragraph 5.3 is the coslice category over
some set $A$. However, what is presented in this paragraph is some extra
structure that arises when considering the statement \"The quotient
$A/\sim$ is universal with respect to the property of mapping $A$ to a
set in such a way that equivalent elements have the same image\". We
thus give some equivalence relation $\sim$ on $A$ and study the quotient
set $A/\sim$ in the general coslice category; to do this, we consider
the subcategory $\mathcal{Q}$ of $\mathcal{C}_A$ where only $\varphi$
such that \"equivalence is preserved\" (i.e., such that
$\forall a', a'' \in A, a' \sim a'' \Rightarrow \varphi(a') = \varphi(a'')$).

With:

-   $s$ the canonical surjection of $A$ onto its quotient $A/\sim$,

-   $\varphi_1$ (resp. $\varphi_2$) being some arbitrary function from
    $A$ to some arbitrary $Z_1$ (resp. $Z_2$),

-   $\sigma$ any function (if it exists) such that
    $\sigma \varphi_1 = \varphi_2$

-   $f_1$ (resp. $f_2$) is the (unique!) function such that
    $s f_1 = \varphi_1$ (resp. $s f_2 = \varphi_2$)

The following diagram commutes, and summarizes the situation.

Objects in this category are denoted as $(\varphi, Z)$ and are obtained
from what used to be *morphisms* (regular functions) in **Set**.
Morphisms are mappings
$\sigma_{\mathcal{Q}} : (\varphi_1, Z_1) \to (\varphi_2, Z_2)$ such that
one exists if and only if
$\exists \sigma \in (Z_1 \to Z_2), \sigma \varphi_1 = \varphi_2$, and
$\forall a', a'' \in A, a' \sim a'' \Rightarrow \varphi(a') = \varphi(a'')$.

Since the textbook also asks whether such a category has initial
objects, we will first also answer this and consider all terminal
objects.

The initial object of a general coslice category is $id_A$. This is
easily verified by doing $\varphi_1 = id_A$, necessarily
$\sigma \varphi_1 = \sigma id_A = \sigma = \varphi_2$, and so $\sigma$
always exists and is unique. We also see that this object satisfies the
\"equivalence preservation\" condition, hence it exists in
$\mathcal{Q}$, and is also the initial object in $\mathcal{Q}$.

A general coslice category has a final object $(t, F)$ (or many final
objects $(t_i, F_i)$) iff $\mathcal{C}$ has a final object $F$ (or many
final objects $F_i$). In that case, any final object $(t, F)$ in
$\mathcal{C}_A$ corresponds to the unique morphism from $A$ to $F$ (for
any final $F$) in $\mathcal{C}$. Let us verify this.

Let $F$ be final in $\mathcal{C}$, and $t$ be the unique morphism
$t \in Hom_{\mathcal{C}} (A, F)$. Let $(\varphi, Z)$ be an arbitrary
object of $\mathcal{C}_A$. Let be $\sigma$ such that
$\sigma \varphi = t$. We consider the following diagram:

Since $F$ is final in $\mathcal{C}$, $\sigma$ is unique and always
exists. Also, since $\sigma$ is unique and always exist, the choice of
$\varphi$ is irrelevant: this same $\sigma$ works for all choices of
$\varphi$ for a given arbitrary $Z$. This proves that
$\sigma_{\mathcal{C}_A}$ exists and is unique for all $(\varphi, Z)$.
Finally, since $\sigma$ works for all choices of $\varphi$, it works for
those that satisfy the \"equivalence preservation\" condition, and so
does $t$: this means that $(t, F)$ is indeed a final object in
$\mathcal{Q}$.

#### 5.6) {#section-43 .unnumbered}

Consider the category corresponding to endowing (as in Example 3.3) the
set $\mathbb{Z}^+$ of positive integers with the divisibility relation.
Thus there is exactly one morphism $d \to m$ in this category if and
only if $d$ divides $m$ without remainder; there is no morphism between
$d$ and $m$ otherwise. Show that this category has products and
coproducts. What are their 'conventional' names? \[§VII.5.1\]

Like example 3.3, this is a case of \"category made from an order
relation over a set\", since divisibility is an order relation
(reflexive, antisymmetric, transitive).

Let us remind the definition of categorical products and coproducts. We
consider some general category $\mathcal{C}$.

An object $A \prod B$ is the product of two objects $A$ and $B$ iff
there is a unique morphism $\pi_A$ (resp. $\pi_B$) from $A \prod B$ to
$A$ (resp. $B$), and for every $Z$ in $\mathcal{C}$, and for every pair
of morphisms $f_A : Z \to A$ and $f_B : Z \to B$, there exists a single
morphism $\sigma = f_A \prod f_B$ such that $\pi_A \sigma = f_A$ and
$\pi_B \sigma = f_B$. This is summarized in the following commutative
diagram.

An object $A \coprod B$ is the coproduct of two objects $A$ and $B$ iff
there is a unique morphism $i_A$ (resp. $i_B$) from $A$ (resp. $B$) into
$A \coprod B$, and for every $Z$ in $\mathcal{C}$, and for every pair of
morphisms $f_A : A \to Z$ and $f_B : B \to Z$, there exists a single
$\sigma = f_A \coprod f_B)$ such that $\sigma i_A = f_A$ and
$\sigma i_B = f_B$. This is summarized in the following commutative
diagram.

We now return to our \"divisibility order category\". We write its
objects as simple integers, and the (if it exists, unique) morphism
representing \"divisibility of $m$ by $n$\" as $(n | m)$. The
conventional name of the product for this category is \"greatest common
divisor\" (or \"meet\"), and of the coproduct, \"least common multiple\"
(or \"join\").

The following commutative diagrams represent this fact. Take two
arbitrary naturals $m$ and $n$. Any number $k$ which divides both $m$
and $n$ also divides their GCD. Likewise, if $k$ is a multiple of both
$n$ and $m$, then it is a multiple of their LCM.

#### 5.7) {#section-44 .unnumbered}

Redo Exercise 2.9 (\"Show that if $A \simeq A'$ and $B \simeq B'$ , and
further $A \cap B = \emptyset$ and $A' \cap B' = \emptyset$, then
$A \cup B \simeq A' \cup B'$. Conclude that the operation $A \coprod B$
(as described in §1.4) is well-defined up to isomorphism\") this time
using Proposition 5.4. (the unicity up-to-isomorphism of terminal
objects).

We define $\text{\textbf{Set}}^{A,B}$ as the \"bicoslice category of $A$
and $B$ over **Set**\". Objects in this category are pairs of morphisms
$(f,g)$ from $A$ and $B$, respectively, into sets $Z$. They can be
diagrammed as follows.

Morphisms are defined between objects as

such that the following diagram commutes

Let us call $I$ the following object of $\text{\textbf{Set}}^{A,B}$,
where $A \coprod B$ is any choice of valid disjoint union of $A$ and
$B$:

By definition of a coproduct, we know that in such a configuration, a
morphism $\sigma^{A,B}$ from this object into any other object of
$\text{\textbf{Set}}^{A,B}$ exists and is unique, and so is the $\sigma$
on which it is based. This means that $I$ is initial in
$\text{\textbf{Set}}^{A,B}$. Consequently, using prop 5.4., the fact
that if an initial object exists, it is unique up-to-isomorphism, we
conclude that $A \coprod B$ is unique up-to-isomorphism.

#### 5.8) {#section-45 .unnumbered}

Extra exercises by/for the group
================================

### Chapter I) 1) Set notation) {#chapter-i-1-set-notation .unnumbered}

Write the following in set notation (as a list of numbers, and
algebraically):

-   the set of all odd integers

-   the set of all integers that are not multiples of 3

-   the set of integers from 10 (included) to 20 (included)

-   the set of integers from 10 (included) to 20 (excluded)

-   the set of pairs of integers with both elements of the same value

-   the set of triplets of real numbers that together sum to 1

-   the set of pairs of positive real numbers that together sum to 1

-   the set of $n$-tuplets (for any $n$) of real number that together
    sum to 1

-   the set of all natural numbers such that there exists at least one
    triplet of positive even numbers which are all different and which
    sum to that number.

Now take the sets in their algebraic notation, and represent them both
as a list of numbers (as a logical sequence or just a couple of
examples), and as a \"description\" of what they are:

-   $\{3n + 2 \; | \; n \in \mathbb{N} \}$

-   $\{3k + 2 \; | \; k \in \mathbb{Z} \}$

-   $\{ 2^i \; | \; i \in [[0, 10]] \}$

-   $\{ (x, y) \in \mathbb{R}^2 \; | \; x^2 + y^2 = 1 \}$

-   $\{ x \in \mathbb{R} \; | \; -2 \leq x \leq 2 \}$

-   $\{ (m, n, p) \in \mathbb{N}^3 \; | \; m + n + p = 10 \}$

Notes
=====

Chapter 1, Section 1 {#chapter-1-section-1 .unnumbered}
--------------------

Go check out the extra exercises on set notation.

Chapter 1, Section 2 {#chapter-1-section-2 .unnumbered}
--------------------

### On injections and surjections {#on-injections-and-surjections .unnumbered}

#### Injections {#injections .unnumbered}

Injections (which aren't also surjections) have multiple left-inverses
(post-inverses). Eg:

$$A = \{ a, b    \}$$ $$B = \{ 1, 2, 3 \}$$
$$f : A \to B = \{ (a, 2), (b, 3) \} \text{, injective}$$

$$g_1 : B \to A = \{ (1, a), (2, a), (3, b) \}$$
$$g_2 : B \to A = \{ (1, b), (2, a), (3, b) \}$$

$$g_1 \circ f = g_2 \circ f = id_A$$

It is precisely the free element with no antecedent in $B$ (here, $1$)
which leaves room for multiple choices, but doesn't affect the overall
inversion process.

#### Surjections {#surjections .unnumbered}

Surjections (which aren't also injections) have multiple right-inverses
(pre-inverses), called sections.

$$B = \{ 1, 2, 3 \}$$ $$A = \{ a, b    \}$$
$$f : B \to A = \{ (1, a), (2, a), (3, b) \} \text{, surjective}$$

$$g_1 : A \to B = \{(a, 1), (b, 3) \}$$
$$g_2 : A \to B = \{(a, 2), (b, 3) \}$$

$$f \circ g_1 = f \circ g_2 = id_A$$

It is precisely the fact that there are multiple elements that map to
the same element (here, $1$ and $2$ to $a$) which leaves room for
multiple choices, but doesn't affect the overall inversion process.

#### Cancellations {#cancellations .unnumbered}

Function Cancellation Lemma: If a composition of functions cancels out,
then the first of the pair is an injection, and the second of the pair
is a surjection. Algebraically: $$\forall A, B \in Obj(\textbf{Set}),
f \in (A \to B), g \in (B \to A), \;
    g \circ f = id_A
\Rightarrow
    \begin{cases}
        f \text{ is injective} \\
        g \text{ is surjective}
    \end{cases}$$

Corollary 1: any post-inverse of an injection is a surjection.

Corollary 2: any pre-inverse of a surjection is an injection.

Proof: Let be
$$A, B \in Obj(\textbf{Set}), f \in (A \to B), g \in (B \to A), \; g \circ f = id_A$$

a\) Suppose $f$ is not an injection. This means:
$$\exists x, y \in B, \; x \neq y \text{ and } g(x) = g(y)$$ However,
with such an $f$, we have:
$$g(x) = g(y) \Rightarrow f(g(x)) = f(g(y)) = id_A(x) = id_A(y) = x = y$$
This means that $f$ is an injection. Contradiction.

Conclusion: in this context, $f$ must be an injection.

b\) Suppose $g$ is not a surjection. This means:
$$\exists a \in A, \; a \notin g(B)$$ Since $g \circ f = id_A$, that
means that $g(f(a)) = id_A(a) = a$, this means that $a \in g(B)$.
Contradiction.

Conclusion: in this context, $g$ must be a surjection.

### On sections and fibers {#on-sections-and-fibers .unnumbered}

Section example with a tangent bundle.

Consider the cylinder $S^1 \times \mathbb{R}$, and the function
$f : S^1 \times \mathbb{R} \to S^1$, the projection onto the circle. The
cylinder is itself the space in which one can easily represent maps of
$(S^1 \to \mathbb{R})$. Each such map corresponds to a section.

Let be

$$\begin{aligned}
g_1 : S^1    & \longrightarrow  S^1 \times \mathbb{R} \\
      \theta & \longmapsto      (\theta, 1)
\end{aligned}$$

$$\begin{aligned}
g_2 : S^1    & \longrightarrow  S^1 \times \mathbb{R} \\
      \theta & \longmapsto      (\theta, cos(\theta))
\end{aligned}$$

We have $$f \circ g_1 = f \circ g_2 = id_{S^1}$$

(TODO add diagrams for S1xR, g1 and g2)

A fiber is the preimage of a singleton. In the case of $f$ above, for
every $q \in S^1$, $f^{-1}({q})$ is the copy of the real line on the
cylinder that passes by $q$.

(TODO add diagram)

### Alternative characterization of a bijection {#alternative-characterization-of-a-bijection .unnumbered}

\"$f$ is bijective\" $\Leftrightarrow$ (\"every element of $B$ has a
non-empty fiber\" (surjection) and \"every fiber is a singleton\"
(injection))

### On monomorphisms and epimorphisms {#on-monomorphisms-and-epimorphisms .unnumbered}

#### Failing the mono/epi condition {#failing-the-monoepi-condition .unnumbered}

##### Example of failing the monomorphism definition for a non-injection {#example-of-failing-the-monomorphism-definition-for-a-non-injection .unnumbered}

Monomorphism definition:

$$\text{$f : A \to B$ is a monomorphism}
\\ \Leftrightarrow \\
\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall g_1, g_2 \in \text{Hom}(Z, A), \;
(f \circ g_1 = f \circ g_2 \Rightarrow g_1 = g_2)$$

$$A = \{ a, b, c \}$$ $$B = \{ 1, 2    \}$$ $$Z = \{ x, y    \}$$
$$f : A \to B = \{ (a, 1), (b, 1), (c, 2) \} \text{, not injective}$$

$$g_1 : Z \to A = \{ (x, a), (y, c) \}$$
$$g_2 : Z \to A = \{ (x, b), (y, c) \}$$

$$f \circ g_1 = f \circ g_2 = \{(x, 1), (y, 2)\} \in (Z \to B)$$

The multiple choice of elements (here, $a$ and $b$) in $A$ which map to
$1$ in $B$ is precisely what allows the overall composition to be equal,
even when $g_1 \neq g_2$. This provides insight into a proof of \"$f$ is
a monomorphism implies that $f$ is an injection\". If you suppose that
$f$ is a monomorphism and not an injection, you can easily reach a
contradiction, since you can use elements like $1$ and $2$ that both map
to the same $a$ to construct a counter-example to the implication that
defines a monomorphism.

##### Example of failing the epimorphism definition for a non-surjection {#example-of-failing-the-epimorphism-definition-for-a-non-surjection .unnumbered}

Epimorphism definition:

$$\text{$f : A \to B$ is an epimorphism}
\\ \Leftrightarrow \\ 
\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall g_1, g_2 \in \text{Hom}(B, Z), \;
(g_1 \circ f = g_2 \circ f \Rightarrow g_1 = g_2)$$

$$g_1 : Z \to A = \{ (x, a), (y, c) \}$$
$$g_2 : Z \to A = \{ (x, b), (y, c) \}$$

$$f \circ g_1 = f \circ g_2 = \{(x, 1), (y, 2)\} \in (Z \to B)$$

$$A = \{ a, b    \}$$ $$B = \{ 1, 2, 3 \}$$ $$Z = \{ x, y    \}$$
$$f : A \to B = \{ (a, 1), (b, 2) \} \text{, not surjective}$$

$$g_1 : B \to Z = \{ (1, x), (2, y), (3, x) \}$$
$$g_2 : B \to Z = \{ (1, x), (2, y), (3, y) \}$$

$$g_1 \circ f = g_2 \circ f = \{(a, x), (b, y)\} \in (A \to Z)$$

The element $3$ in $B$ not being reached by $f$ is precisely that which
provides the opportunity to build $g_1 \neq g_2$ such that they compose
to the same result with $f$, since the output of $3$ for them doesn't
affect the overall composition. This provides insight into a proof of
\"$f$ is an epimorphism implies that $f$ is a surjection\". If you
suppose that $f$ is an epimorphism and not a surjection, you can easily
reach a contradiction, since you can use elements like $3$ that are not
reached by $f$ to construct a counter-example to the implication that
defines an epimorphism.

#### Proofs of mono/inj and epi/surj equivalence {#proofs-of-monoinj-and-episurj-equivalence .unnumbered}

Let $f : A \to B$.

The parts which are \"Injection =\> Monomorphism\" and \"Surjection =\>
Epimorphism\" both use the respective sided inverses to prove the
implication.

The other parts use the following tautology to prove the implication by
contradiction. \"Suppose that $p$ and $\neg q$, show that it leads to a
contradiction\".

$$(p \Rightarrow q)
\Leftrightarrow ((\neg  p) \cup      q )
\Leftrightarrow ( \neg (p  \cap \neg q))$$

##### Injection =\> Monomorphism {#injection-monomorphism .unnumbered}

Suppose that $f$ is an injection. It thus has post-inverses.

$$\exists g \in (B \to A), g \circ f = id_A$$

From there:

$$\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall a, b \in \text{Hom}(Z, A),$$ $$\begin{array}{ccccc} \\
f \circ a = f \circ b & \Rightarrow &  g \circ (f  \circ a) &=&  g \circ (f  \circ b) \\
                      & =           & (g \circ  f) \circ a  &=& (g \circ  f) \circ b  \\
                      & =           &         id_A \circ a  &=&         id_A \circ b  \\
                      & =           &                    a  &=&                    b
\end{array}$$

We conclude that $f$ is also a monomorphism.

##### Surjection =\> Epimorphism {#surjection-epimorphism .unnumbered}

Suppose that $f$ is a surjection. It thus has pre-inverses.

$$\exists g \in (B \to A), f \circ g = id_B$$

From there:

$$\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall a, b \in \text{Hom}(B, Z),$$ $$\begin{array}{ccccc} \\
a \circ f = b \circ f & \Rightarrow & (a \circ  f) \circ g  &=& (b \circ  f) \circ g  \\
                      & =           &  a \circ (f  \circ g) &=&  b \circ (f  \circ g) \\
                      & =           &  a \circ  id_B        &=&  b \circ  id_B        \\
                      & =           &  a                    &=&  b
\end{array}$$

We conclude that $f$ is also an epimorphism.

##### Monomorphism =\> Injection {#monomorphism-injection .unnumbered}

Suppose that $f$ is a monomorphism.

$$\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall g_1, g_2 \in \text{Hom}(Z, A), \;
f \circ g_1 = f \circ g_2 \Rightarrow g_1 = g_2$$

Suppose now that $f$ is not an injection. Algebraically, this means
that:

$$\exists (x, y) \in A^2, \text{ such that } x \neq y \text{ and } f(x) = f(y)$$

We can construct $g_1$ and $g_2$ such that $f \circ g_1 = f \circ g_2$
but $g_1 \neq g_2$, using such a pair $(x, y)$. Thereby, we prove that
$f$ is not an monomorphism and arrive at a contradiction.

(If $Z$ is the empty set, being initial in $\mathbf{Set}$, there is only
1 map into $A$ (the empty map) and $a = b$ always hold. Therefore, any
counterexample to the epimorphism definition needs to have at least 1
element.)

Let $Z = \{a\}$.

$$g_1(a) = x$$ $$g_2(a) = y$$

Clearly, $g_1 \neq g_2$. However, we also have:

$$f(g_1(a)) = f(x) = f(y) = f(g_2(a)) \Rightarrow
f \circ g_1 = f \circ g_2$$

This means that $f$ is not a monomorphism: contradiction.

Conclusion: $f$ is an injection.

##### Epimorphism =\> Surjection {#epimorphism-surjection .unnumbered}

Suppose that $f$ is an epimorphism.

$$\forall Z \in \text{Obj}(\mathcal{C}), \;
\forall g_1, g_2 \in \text{Hom}(B, Z), \;
g_1 \circ f = g_2 \circ f \Rightarrow g_1 = g_2$$

Suppose now that $f$ isn't a surjection. Algebraically, this means that:

$$\exists x \in B, x \notin f(A)$$

We can construct $g_1$ and $g_2$ such that $g_1 \circ f = g_2 \circ f$
but $g_1 \neq g_2$, using such an $x \notin f(A)$. Thereby, we prove
that $f$ is not an epimorphism and arrive at a contradiction.

(If $Z$ is the singleton set, being terminal in $\mathbf{Set}$, there is
only 1 map into $Z$ and $a = b$ always hold. Therefore, any
counterexample to the epimorphism definition needs to have at least 2
elements. We will however use a 3-element set, since it makes things
more intuitive and pedagogical.)

Let $Z = \{a, b, c\}$.

$$g_1 =
\begin{cases}
    \forall x    \in f(A), g_1(x) = a \\
    \forall x \notin f(A), g_1(x) = b
\end{cases}$$

$$g_2 =
\begin{cases}
    \forall x    \in f(A), g_2(x) = a \\
    \forall x \notin f(A), g_2(x) = c
\end{cases}$$

Clearly, $g_1 \neq g_2$. However, since $A$ is the domain of $f$, of
$g_1 \circ f$, and of $g_2 \circ f$, we have:

$$g_1 \circ f = g_2 \circ f = (x \mapsto a) \in (A \to Z)$$

This means that $f$ is not an epimorphism: contradiction.

Conclusion: $f$ is a surjection.

Chapter 1, Section 3 {#chapter-1-section-3 .unnumbered}
--------------------

### Example summary {#example-summary .unnumbered}

-   (3.2): Set, category of sets as objects and set functions as
    morphisms.

-   (3.3): preorder (or order, or equivalence relation) over a (single)
    set, transformed into a category; elements of the set as objects,
    and elements of the preorder (which is a relation, hence a subset of
    the cartesian product) as morphisms.

-   (3.4): the powerset with the inclusion operator, transformed into a
    category; elements of the powerset (i.e., subsets of the set) as
    objects, and inclusion relations as morphisms (this is just an
    example of a preorder / order / equivalence category seen in 3.3).

-   (3.5): slice categories $\mathcal{C}_A$, categories which isolate a
    specific object $A$ of a given category $\mathcal{C}$, and studies
    the morphisms into that object; an object of $\mathcal{C}_A$ is any
    morphism from any arbitrary objet $Z$ into $A$ (not the homset
    $Hom(Z, A)$ itself !) and a morphism in $\mathcal{C}_A$ (from
    $z_1 \in Z_1 \to A$ to $z_2 \in Z_2 \to A$) is a \"raising\"
    $\sigma_A$ into $\mathcal{C}_A$ of a morphism
    $\sigma \in Z_1 \to Z_2$ in $\mathcal{C}$ that preserves composition
    on morphisms in $\mathcal{C}$ (i.e.,
    $z_1 = z_2 \sigma \Rightarrow \sigma_A z_1 = z_2$).

-   (3.6): combining examples 3.3 and 3.5, first start with an order
    category on the set $\mathbb{Z}$ (there is a morphism $m \to n$ iff
    $m \leq n$), then select a specific object (here, $A = 3$) then
    study all morphisms of the category into $A$ (so the relation
    $n \leq 3$ for any $Z = n$); the morphisms
    $\sigma_3 = (m, 3) \to (n, 3)$ are then simply given by the
    transitivity of $\leq$, i.e., $m \leq n \leq 3$ ($(m, 3) \to (n, 3)$
    corresponds to $m \leq 3 \Rightarrow n \leq 3$, meaning our
    $z_1 = z_2 \sigma$ transforming into $\sigma_A z_1 = z_2$, here,
    corresponds to $(m \leq 3) = (n \leq 3) \cap (m \leq n)$ is
    transformed into
    $(m \leq 3 \Rightarrow n \leq 3) \cap (m \leq 3) \Leftrightarrow (n \leq 3)$).

-   (3.7): coslice categories (morphisms out of a chosen object).

-   (3.8): the category **Set$^\star$** of pointed sets, a coslice
    category over **Set** and any singleton set $\{ \star \}$. Objects
    in **Set$^\star$** are regular sets, but with a unique distinguished
    element; morphisms are any set functions that map the domain's
    distinguised element to the codomain's distinguished element.

-   (3.9): \"bislice\" and \"bicoslice\" categories, basically a similar
    construct as slice and coslice, but taking two objects of the
    starting category, and studying pairs of morphisms (from a common
    domain, resp codomain) into (resp from) this pair.

-   (3.10): \"fibered bislice\" and \"fibered bicoslice\" categories,
    once again a similair construct, but this time taking two
    *morphisms* into a common set C (resp. from a common set C).

### On terminal and initial objects in **Set** {#on-terminal-and-initial-objects-in-set .unnumbered}

If $\empty$ is initial and $\{ \star \}$ is terminal, it is because a
function in $Set$ (in categorical terms) must always have an output for
every input. Ie, in category theory, all functions are maps
(\"applications\").

Said algebraically:

$$\forall A, B \in \text{Obj}(\bold{Set}), \;
\forall a \in A, \;
\forall f \in \text{Hom}(A, B), \;
\exists f(a) \in B$$

In the case of $\empty$ as the input set, and there is only one function
$f: \empty \to Z$ for any $Z$: $f$ is the empty mapping. But any
$Z \to \empty$ (expept $\empty \to \empty$) contains no mapping (since
we'd necessarily be ignoring at least one element of $Z$).

Similarly, in the case of the (unique up-to-isomorphism) singleton set
$\{ \star \}$ as the output, you'd have multiple functions (precisely
$2^{|Z|}$) into it, if you could ignore some elements of the input set.
However, if all elements of the input set are required, that leaves you
with only one function possible from $Z \to \{ \star \}$: the function
which maps all elements to $\star$.

### Restrictions and extensions of functions, and its consequences on a function's nature {#restrictions-and-extensions-of-functions-and-its-consequences-on-a-functions-nature .unnumbered}

8 possibilities to study, based on the following binary dichotomies:

-   injection or surjection

-   enlarging or restricting

-   domain or codomain

Note that enlarging the domain sometimes implies enlarging the codomain,
and restricting the codomain sometimes implies restricting the domain.

Legend: Yes, No, Depends

  ------------ ------------- -------------- ------------- --------------
                enlarge dom   restrict dom   enlarge cod   restrict cod
   injection         D             Y              Y             Y
   surjection        Y             D              N             Y
  ------------ ------------- -------------- ------------- --------------

Theorems:

A\) if $f \in (A \to B), f \text{ injective (resp. surjective)}$, then
$\forall Z \subseteq B, \hat{f} \in ((f^{-1}(Z) \subseteq A) \to Z), \hat{f} = f|_{f^{-1}(Z)}$,
the restriction of the function to the corresponding smaller codomain,
is also an injection (resp. surjection).

B\) if $f \in (A \to B), f \text{ injective (resp. surjective)}$, then
$\forall Z \supseteq B, \hat{f} \in (A \to Z), \hat{f} = \iota \circ f$
(with the $\iota$ the canonical injection of $b \in B$ into its superset
$Z$), is also an injection (resp. is never a surjection).

C\) if $f \in (A \to B), f \text{ injective}$, then
$\forall Z \subseteq A, \hat{f} \in (Z \to B), f = \iota_{(Z \to A)} \circ \hat{f}$,
we have that $\hat{f}$ is also an injection. However, one can construct
$Z \subseteq A$ such that $f$ stops being a surjection.

D\) if $f \in (A \to B), f \text{ surjective}$, then
$\forall Z \supseteq A, \hat{f} \in (Z \to (B \cup f(Z))), f = \iota_{(Z \to A)} \circ \hat{f}$,
we have that $\hat{f}$ is also a surjection. However, one can construct
$Z \subseteq A$ such that $f$ stops being a injection.

Proof: TODO

### On the morphisms of slice and coslice categories {#on-the-morphisms-of-slice-and-coslice-categories .unnumbered}

Given a base category $\mathcal{C}$, and some set $A$ we wish to study
the homsets of the slice (resp. coslice) category $\mathcal{C}_A$ (resp.
$\mathcal{C}^A$. **These homsets might be empty, or have more than one
element.**

We remind that slice categories consider *morphisms to A* as their
*objects* (written as $(Z, \varphi)$ for any $\varphi : Z \to A$), while
coslice categories consider *morphisms from A* as their *objects*
(written as $(\varphi, Z)$ for any $\varphi : A \to Z$. *Morphisms*, of
the form $\sigma_A : (Z_1, \varphi_1) \to (Z_2, \varphi_2)$ (resp.
$\sigma^A : (\varphi_1, Z_1) \to (\varphi_2, Z_2)$) in a slice category
$\mathcal{C}_A$ (resp. coslice category $\mathcal{C}^A$) map such
objects to one another if and only if there exists a morphism in
$\mathcal{C}$ (the base category!) such that
$\varphi_1 = \varphi_2 \sigma$ (resp. $\sigma \varphi_1 = \varphi_2$).

#### Example of no $\sigma$ for a slice category {#example-of-no-sigma-for-a-slice-category .unnumbered}

For example, note that there exist pairs of morphisms
$f_1 \in (Z_1 \to A)$ and $f_2 \in (Z_2 \to A)$ between which there is
no morphism that exists in the slice category. One such example we can
make is in $(Vect_\mathbb{R})_{\mathbb{R}^2}$. If we take the maps:

$$f_1 = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \in \mathcal{L}(\mathbb{R}^2)$$
$$f_2 = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix} \in \mathcal{L}(\mathbb{R}^2)$$

There exists no map $\sigma$ such that the following diagram commutes
(since the output of $f_1$ will always be null in its second coordinate,
and the output of $f_2$ will always be null in the first):

#### Example of no $\sigma$ for a coslice category {#example-of-no-sigma-for-a-coslice-category .unnumbered}

TODO add potato diagram

Take $A = Z_2 = \{ a, b, c \}$, $\varphi_2 = id_A$, and
$Z_1 = \{ 1, 2 \}$. Since
$|Z_1| = |dom(\sigma)| < |cod(\sigma)| = |Z_2|$, there is no possible
case in which $\text{Im} (\sigma) = \text{Im} (id_A)$ (even if
$\varphi_1$ is epi).

#### Example of multiple $\sigma$ {#example-of-multiple-sigma .unnumbered}

TODO add potato diagram

Another example, this time in a coslice category, with
$A = \{ a, b, c \}$, we take $\text{\textbf{Set}}_A$. We take
$Z_1 = \{ 1, 2, 3 \}$, $Z_2 = \{T, F\}$. For
$\varphi_1 : A \to Z_1 = \{(a, 1), (b, 1), (c, 3)\}$ and
$\varphi_2 : A \to Z_2 = \{(a, T), (b, T), (c, F)\}$ there exists two
elements in $Hom_{\mathcal{Set}^A} (Z_1, Z_2)$. These originate from two
functions in **Set**: $\sigma_\alpha = \{ (1, T), (2, T), (3, F) \}$ and
$\sigma_\beta = \{ (1, T), (2, F), (3, F) \}$. The free element in
$2 \in Z_1$ which is not in $\text{Im} (\varphi_1)$ offers a degree of
freedom.

#### Explanations on the conditions for $\sigma$ {#explanations-on-the-conditions-for-sigma .unnumbered}

In the first example, what causes the issue is the fact that the images
of $f_1$ and $f_2$ in $A$ are distinct.

In the second example, what causes the issue is the fact that we've
reduced our common domain $A$ to an insufficient intermediary object
$Z_1$.

The \"element which isn't mapped to offers a degree of freedom and thus
breaks unicity\" in the last example should remind you of the notes on
surjections. Indeed, when comparing $\sigma_\alpha$ and $\sigma_\beta$,
we're in a context which is reminiscent of the definition of an
epimorphism.

$$\varphi_2 = \sigma_\alpha \varphi_1 = \sigma_\alpha \varphi_1$$

We can be assured of being able to cancel $\varphi 1$ iff $\varphi_1$ is
an epimorphism, and thus $\sigma$, if it exists, is unique. The proof
for slice categories is similar, but given the reverse orders, uses
monomorphisms.

More generally:

-   a\) in a slice category, there will be no $\sigma$ if
    $\text{Im} (\varphi_1) \neq \text{Im} (\varphi_2)$ (proof ? and in
    more general categories than concrete categories ? TODO: iff ?)

-   b\) in a coslice category, there will be no $\sigma$ if
    $\text{Pr} (\text{Im} (\varphi_1) \neq \text{Pr} (\text{Im} (\varphi_2))$
    (proof ? and in more general categories than concrete categories ?
    TODO: iff ?)

-   c\) in a slice category, there is at most a single $\sigma$ iff
    $\varphi_2$ is mono

-   d\) in a coslice category, there is at most a single $\sigma$ iff
    $\varphi_1$ is epi

(see perhaps https://ncatlab.org/nlab/show/over+category and
https://ncatlab.org/nlab/show/under+category )

Chapter 1, Section 4 {#chapter-1-section-4 .unnumbered}
--------------------

### Notes on counterintuitive rules {#notes-on-counterintuitive-rules .unnumbered}

-   in some categories (such as $\mathbb{Z}$ with $\leq$; or **Ring**),
    \"mono and epi\" does not imply \"iso\"

-   in every *abelian* category, we have that \"iso $\Leftrightarrow$
    epi and mono\" (and though **Set** is not abelian, the property
    still holds)

-   while in **Set**, a function is an epimorphism (surjective) iff it
    has a pre-inverse, in **Grp**, some epimorphisms do not have right
    inverses.

Chapter 1, Section 5 {#chapter-1-section-5 .unnumbered}
--------------------

### Initial and terminal objects {#initial-and-terminal-objects .unnumbered}

-   there are categories without either initial or terminal objects,
    such as the preorder category of $\mathbb{Z}$ with $\leq$.

-   there are categories with multiple initial or terminal objects (for
    example, in **Set**, every singleton set is a terminal object);
    however, these are respectively unique up to isomorphism

-   any object which is both initial and terminal is called a zero
    object.

### Universal properties {#universal-properties .unnumbered}

#### \"Normal\" universal properties {#normal-universal-properties .unnumbered}

Verbatim: \"The most natural context in which to introduce universal
properties requires a good familiarity with the language of functors,
which we will only introduce at a later stage. \[\...\] We say that a
construction satisﬁes a universal property (or: 'is the solution to a
universal problem') when it may be viewed as a terminal object of a
category.\"

Then: \"The declaration/explanation of a universal property generally
follows the pattern 'object X is universal with respect to the following
property: for any Y such that\..., there exists a unique morphism Y → X
such that\...'; this explanation hides the deﬁnition of an accessory
category, and the statement that X is terminal.\"

This is a complicated way to say: there is some construct to decompose a
morphism which is \"universal\" (always exists) and reduces the rest of
the information of the morphism into something \"unique\" (hence
terminal object of some subcategory).

#### Dual universal properties {#dual-universal-properties .unnumbered}
