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
    \end{cases}$$ Corollary 1: any post-inverse of an injection is a
surjection.

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

-   $C^{A, B}$ category ??
