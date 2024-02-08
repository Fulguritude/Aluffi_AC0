---
author:
- 'Multiversity *Algebra Chapter 0* Reading Group'
---

Exercise solutions
==================

Chapter I) {#chapter-i .unnumbered}
----------

### Section 1) {#section-1 .unnumbered}

#### 1.1) {#section .unnumbered}

In a nutshell, Russell's paradox proves, by contradiction, that certain
mathematical collections cannot be sets. It posits the existence of a
\"set of all sets that don't contain themselves\". Such a set can
neither contain itself (since in that case, it would be a \"set that
does contain itself\", and should be excluded); nor can it exclude it
itself (since in that case, it would be a \"set that doesn't contain
itself\", and should be included).

#### 1.2) {#section-2 .unnumbered}

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

#### 1.3) {#section-3 .unnumbered}

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

#### 1.4) {#section-4 .unnumbered}

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

#### 1.5) {#section-5 .unnumbered}

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

#### 1.6) {#section-6 .unnumbered}

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

#### 2.1) {#section-7 .unnumbered}

How many different bijections are there between a set $S$ with $n$
elements and itself?

Any bijection is a choice of a pairs from 2 sets of the same size, where
each element is used only once, and each pair has one element from each
set. At first there are $n$ choices in each set. We go through each
possible input element in order (no choice), for each one, we pick one
amongst $n$ possibilities for an output.

There are then $(n-1)$ choice of output left, etc.

Ccl°: $\prod_{i=1}^{i=n} i = n!$

#### 2.2) {#section-8 .unnumbered}

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

#### 2.3) {#section-9 .unnumbered}

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

#### 2.4) {#section-10 .unnumbered}

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

#### 2.5) {#section-11 .unnumbered}

Formulate a notion of epimorphism and prove that epimorphisms and
surjections are equivalent.

See \"notes\" file: section \"Proofs of mono/inj and epi/surj
equivalence\".

#### 2.6) {#section-12 .unnumbered}

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

#### 2.7) {#section-13 .unnumbered}

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

#### 2.8) {#section-14 .unnumbered}

Describe as explicitly as you can all terms in the canonical
decomposition of the function $f \in (\mathbb{R} \to \mathbb{C})$
defined by $f = (r \mapsto e^{2 \pi i r})$. (This exercise matches one
assigned previously, which one?)

Firstly, elements of $\mathbb{R}$ are equivalent by this map (they have
the same output) if they vary by $1$ from each other. This is a
reference to the equivalence relation $\sim$ in exercise 1.6. Therefore,
we will use $\mathbb{R}/\sim \simeq S^1$ in our decomposition.
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

#### 2.9) {#section-15 .unnumbered}

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

#### 2.10) {#section-16 .unnumbered}

Show that if $A$ and $B$ are finite sets, then $|B^A| = |B|^{|A|}$.

The number of $|B^A|$ functions in $B^A = (A \to B)$ can be counted in
the following way.

For each element $a$ of $A$, of which there are $|A|$, we can pick any
element of $|B|$ as the image. This means $|B| \times ... \times |B|$, a
total of $|A|$ times. Hence, $|B^A| = |B|^{|A|}$.

#### 2.11) {#section-17 .unnumbered}

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
the powerset $\mathcal{A}$, and there is a bijection between the two.

### Section 3) {#section-3-1 .unnumbered}

#### 3.1) {#section-18 .unnumbered}

Let $\mathcal{C}$ be a category. Consider a structure $\mathcal{C}^{op}$
with: - $Obj(\mathcal{C}^{op}) \coloneqq Obj(\mathcal{C})$; - for $A$,
$B$ objects of $\mathcal{C}^{op}$ (hence, objects of $\mathcal{C}$),
$Hom_{\mathcal{C}^{op}} (A, B) \coloneqq Hom_{\mathcal{C}} (B, A)$ Show
how to make this into a category.

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
axioms of a category (namely identity and assossiativity of
composition).

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

#### 3.2) {#section-19 .unnumbered}

If $A$ is a finite set, how large is $End_{\text{Set}}(A)$ ?

We know that, in Set, $End_{\text{Set}}(A) = (A \to A) = A^A$. From a
previous exercise, we know that $|B^A| = |B|^|A|$, therefore
$|End_{\text{Set}}(A)| = |A|^|A|$.

#### 3.3) {#section-20 .unnumbered}

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

#### 3.4) {#section-21 .unnumbered}

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

#### 3.5) {#section-22 .unnumbered}

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

#### 3.6) {#section-23 .unnumbered}

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

#### 3.7) {#section-24 .unnumbered}

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
$(Vect_\mathbb{R})_{\mathbb{R}^2}$. If we take the maps:

$$f_1 = \begin{bmatrix} 1 & 0 \\ 0 & 0 \end{bmatrix} \in \mathcal{L}(\mathbb{R}^2)$$
$$f_2 = \begin{bmatrix} 0 & 0 \\ 0 & 1 \end{bmatrix} \in \mathcal{L}(\mathbb{R}^2)$$

There exists no map $\sigma$ such that the following diagram commutes
(since the output of $f_1$ will always be null in its second coordinate,
and the output of $f_2$ will always be null in the first):

Now, let us prove that $\mathcal{C}_A$ is indeed a category for an
arbitrary object $A$ of an arbitrary category $\mathcal{C}$.

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

#### 3.8) {#section-25 .unnumbered}

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

#### 3.9) {#section-26 .unnumbered}

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

#### 3.10) {#section-27 .unnumbered}

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

#### 3.11) {#section-28 .unnumbered}

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

#### 4.1) {#section-29 .unnumbered}

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

#### 4.2) {#section-30 .unnumbered}

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

#### 4.3) {#section-31 .unnumbered}

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

#### 4.4) {#section-32 .unnumbered}

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

#### 4.5) {#section-33 .unnumbered}

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
