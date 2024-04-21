---
author:
- 'Multiversity *Algebra Chapter 0* Reading Group'
---

`row sep=normal, column sep=normal`

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

Lexicon
=======

Chapter 1 {#chapter-1 .unnumbered}
---------

### Section 1 {#section-1 .unnumbered}

-   Set (not a multiset)

-   $\emptyset$: the empty set, containing no elements;

-   $\mathbb{N}$: the set of natural numbers (that is, nonnegative
    integers);

-   $\mathbb{Z}$: the set of integers;

-   $\mathbb{Q}$: the set of rational numbers;

-   $\mathbb{R}$: the set of real numbers;

-   $\mathbb{C}$: the set of complex numbers.

-   Singleton:

-   $\exists$: existential quantifier, \"there exists\"

-   $\forall$: universal quantifier, \"for all\"

-   inclusion:

-   subset:

-   cardinal:

-   powerset:

-   $\cup$: the union:

-   $\cap$: the intersection:

-   $\\$: the difference:

-   $\coprod$: the disjoint union:

-   $\times$: the (Cartesian) product:

-   complement of a subset

-   relation

-   order relation

-   equivalence relation

-   reflexivity

-   symmetry

-   antisymmetry

-   transitivity

-   partition

-   $/\sim$: quotient by an equivalence relation

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

-   final object

-   terminal object

-   (categorical) product

-   (categorical) coproduct

-   (categorical) pullback / fibered product

-   (categorical) pushout / fibered coproduct

-   (set) pullback / fibered product

-   (set) pushout / fibered coproduct
