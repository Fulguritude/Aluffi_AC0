
# Aluffi

---

different symbols used for contradiction:
- ⊥ (false tautology)
- ⇒⇐ (conflicting implications)
- ※ (japanese asterisk)
- ⛝ (crossed box; normal box being "end of proof")
- ↯ (thunderbolt of god's logic smiting you)

## 0. Set exercices

### 0.1. Notating sets

- the set of all odd integers  
`{ 2·k+1 | k ∈ ℤ }`
`{ −3, −1, 1, 3, 5, 7, 9, 11, ... }`

- the set of all integers that are not multiples of 3  
`{ 3·n = k | k ∈ ℤ, n ∉ ℤ }`
`{ −5, −4, −2, −1, 1, 2, 4, 5, 7, 8, 10, 11, 13, 14, ... }`

- the set of integers from 10 to 20 (included)  
`{ n | n ∈ ℤ, 10 ≤ n ≤ 20] }`
`{ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 }`

- the set of integers from 10 to 20 (excluded)  
`{ n | n ∈ ℤ, 10 ≤ n < 20 }`
`{ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }`

- the set of pairs of integers with both elements of the same value  
`{ (n,m) ∈ ℤ² | n = m }`
`{ (−1,−1), (0,0), (1,1), (2,2), (3,3), ... }`

- the set of triplets of real numbers that together sum to 1
`{ (x,y,z) ∈ ℝ³ | x+y+z = 1 }`
`{ (1,0,0), (0,1,0), (0,0,1), (0.5,0.5,0), (1/3,1/3,1/3), ... }`

- the set of pairs of positive real numbers that together sum to 1  
`{ (n,m) ∈ ℝ+² | n+m = 1 }`
`{ (0,1), (1,0), (1/2,1/2), (1/3,2/3), (1/4,3/4), ... }`

- the set of n-tuplets (for any n) of real numbers that together sum to 1  
`{ (x₁,x₂,...,xₙ) ∈ ℝⁿ | n ∈ ℕ, ∑[i=1;n](xᵢ) = 1 }`
`{ (0,1), (0,0,1), (0,0,0,1), (1/5,1/5,1/5,1/5,1/5), (1/2,1/3,1/6), ... }`

- the set of all natural numbers such that there exists at least one triplet of positive even numbers which are all different and which sum to that number.  
`{ n | n ∈ ℕ, ∃ (a,b,c) ∈ 2·ℕ³ | (a≠b ∧ b≠c ∧ a≠c) ∧ (a+b+c = n) }`
`{ 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, ... }`

### 0.2. Describing sets

- `{ 3·n+2 | n ∈ ℕ }`
the set of natural numbers that are immediately before/inferior to a multiple of 3
`{ 2, 5, 8, 11, 14, 17, 20, 23, 26, 29, ... }`

- `{ 3·k+2 | k ∈ ℤ }`
the set of integers that are immediately before/inferior to a multiple of 3
`{ −7, −4, −1, 2, 5, 8, 11, 14, 17, ... }`

- `{ 2ⁱ | i ∈ [[0,10]] }`
the set of powers of two between 1 and 1024, included
`{ 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 }`

- `{ (x,y) ∈ ℝ² | x² + y² = 1 }`
the set of pairs of real numbers whose sum of squares equals 1
`{ (0,1), (1,0), (√0.5,√0.5), (√0.3,√0.7), ... }`

- `{ x ∈ ℝ | −2 ≤ x ≤ 2 }`
the set of real numbers between −2 and +2, included
`{ −2, −1.1234567, 0, 0.0000001, 1, 2, ... }`

- `{ (m,n,p) ∈ ℕ³ | m+n+p = 10 }`
the set of triplets of naturals that together sum to 10
`{ (0,0,10), (1,2,7), (5,5,0), ... }`



---

# 1. Set theory and categories

---

## 1.1. Set theory and categories

### 1.1.0. Lexicon

- [*set*](https://en.wikipedia.org/wiki/Set_(mathematics)): a set is a collection of different things; these things are called *elements* or *members* of the set and are typically mathematical objects of any kind: numbers, symbols, points in space, lines, other geometrical shapes, variables, or even other sets. A set may have a finite number of elements or be an infinite set. Furthermore, there is a unique set with no elements, called the *empty set*. A set with a single element is a *singleton* set.
- [*subset*/*superset*](https://en.wikipedia.org/wiki/Subset): a set 𝐴 is a *subset* of a set 𝐵 if all elements of 𝐴 are also elements of 𝐵; 𝐵 is then said to be a *superset* of 𝐴. It is possible for 𝐴 and 𝐵 to be equal; if they are unequal, then 𝐴 is a *proper subset* of 𝐵.
- [*partition*](https://en.wikipedia.org/wiki/Partition_of_a_set): a grouping of a set's elements into non-empty subsets, in such a way that every element is included in exactly one subset.
- [*domain*](https://en.wikipedia.org/wiki/Domain_of_a_function): the set of inputs accepted by the function. It is sometimes denoted by `dom(f)`.
- [*codomain*](https://en.wikipedia.org/wiki/Codomain): a set into which all of the output of the function is constrained to fall. It is sometimes denoted by `cod(f)`.
- [*image*/*preimage*](https://en.wikipedia.org/wiki/Image_(mathematics)): for a function 𝑓 : 𝑋 → 𝑌, the image of an input value 𝑥 is the single output value produced by 𝑓 when passed 𝑥. The preimage of an output value 𝑦 is the set of input values that produce 𝑦.
- [*cartesian product*](https://en.wikipedia.org/wiki/Cartesian_product): An operation that takes two sets and produces every possible ordered pair of elements from those two sets.
  `∀(A,B in Set), A × B = { a,b | (a ∈ A) ∧ (b ∈ B) }`
- [*disjoint*](https://en.wikipedia.org/wiki/Disjoint_sets): two sets are said to be disjoint if their intersection is empty.
- [*relation*](https://en.wikipedia.org/wiki/Binary_relation): a binary logical operator which is a set of ordered pairs from two sets.
- [*reflexive*](https://en.wikipedia.org/wiki/Reflexive_relation): property of a relation that it relates each element to itself.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x ∈ X), x ○ x`
- [*irreflexive*](https://en.wikipedia.org/wiki/Reflexive_relation#Irreflexive_relation): property of a relation that it never relates an element to itself.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x ∈ X), ¬(x ○ x)`
- [*symmetric*](https://en.wikipedia.org/wiki/Symmetric_relation): property of a relation that the left-right order is interchangeable.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X), x ○ y ⇔ y ○ x`
- [*antisymmetric*](https://en.wikipedia.org/wiki/Antisymmetric_relation): property of a relation that two distinct elements cannot be symmetrically related.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X), (x ○ y) ∧ (y ○ x) ⇒ (x = y)`
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X), (x ≠ y) ⇒ ¬(x ○ y) ∨ ¬(y ○ x)`
- [*transitive*](https://en.wikipedia.org/wiki/Transitive_relation): property of a relation that the relationship can be applied to between two elements indirectly, via an intermediary.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y,z ∈ X), ((x ○ y) ∧ (y ○ z)) ⇒ (x ○ z)`
- [*equivalence relation*](https://en.wikipedia.org/wiki/Equivalence_relation): a binary relation that is reflexive, symmetric and transitive.
- [*equivalence class*](https://en.wikipedia.org/wiki/Equivalence_class): Each equivalence relation provides a partition of the underlying set into disjoint equivalence classes. Two elements of the given set are equivalent to each other if and only if they belong to the same equivalence class.



### 1.1.1. Locate a discussion of Russell’s paradox, and understand it.

Here is the paradoxical set: `S = { s | s ∉ s }`
- given https://en.wikipedia.org/wiki/Axiom_of_extensionality
	`∀x ∀y (∀z (z ∈ x ⇔ z ∈ y) ⇒ x = y)`
- given https://en.wikipedia.org/wiki/Unrestricted_comprehension
	`∃y ∀x (x ∈ y ⇔ φ(x))`
- substitute `φ(x)` with `x ∉ x` and we have:
	`∃y ∀x (x ∈ y ⇔ x ∉ x)`
- using https://en.wikipedia.org/wiki/Existential_instantiation
	and https://en.wikipedia.org/wiki/Universal_instantiation
Then you can deduce `S ∈ S ⇔ S ∉ S`.



### 1.1.2. Prove that if `~` is a relation on a set `S`, then the corresponding family `P~` defined in §1.5 is indeed a partition of `S`: that is, its elements are nonempty, disjoint and their union is `S`. [§1.5]

We have a set `S` and a nondistinct relation `~`:
`S/~ := P~`
In the resulting set, we have some equivalence classes.
- `P~` has no empty elements: All such equivalence classes are non-empty, for if they were, they wouldn't be an equivalence class at all.
- `P~` elements are disjoint: ???
- `P~` union of all sub-elements makes up the original set `S`: ???



### 1.1.3. Given a partition `P` on a set `S`, show how to define a relation `~` on `S` such that `P` is the corresponding partition. [§1.5]

Question poorly phrased, I can define one by just using "let"...
`∃~ ∀P ∀S, S/~ = P`



### 1.1.4. How many different equivalence relations may be defined on the set `{1,2,3}`?

There are only 5 possible partitions:
```
{{1},{2},{3}}
{{1},{2,3}}
{{2},{1,3}}
{{3},{1,2}}
{{1,2,3}}
```
Does this mean there are 5 equivalence classes though ? idk



### 1.1.5. Give an example of a relation that is reflexive and symmetric, but not transitive. What happens if you attempt to use this relation to define a partition on the set? (Hint: thinking about the second question will help you answer the first one.)

Let's imagine a "similarity relation" we can notate with `≈`; we can imagine it to work like a looser version of equality (say for example, if an integer is only 1 away, then it counts as similar).
- reflexive: `∀(a ∈ S), a ≈ a` (an element is always "similar" to itself)
- symmetric: `∀(a ∈ S) ∀(b ∈ S), a ≈ b ⇒ b ≈ a` ("similarity" goes both ways)
- not transitive: `∀(a ∈ S) ∀(b ∈ S) ∀(c ∈ S), (a ≈ b ∧ b ≈ c) ⤃ a ≈ c` (just because `a ≈ b` and `b ≈ c` are similar, that doesn't mean `a ≈ c` works, because it is possible for the "similarity gap" to be too large to qualify as "similar").

If we use this to define a partition `P` on some set `S`:
`S/≈ := P≈`, there is ambiguity as to which element should go into which equivalence class.



### 1.1.6. Define a relation `~` on the set `ℝ` of real numbers, by setting `a ~ b ⇔ (b − a) ∈ ℤ`. Prove that this is an equivalence relation, and find a ‘compelling’ description for `ℝ/~`. Do the same for the relation `≈` on the plane `ℝ × ℝ` defined by declaring `(a₁,a₂) ≈ (b₁,b₂) ⇔ (b₁ − a₁) ∈ ℤ ∧ (b₂ − a₂) ∈ ℤ`. [§II.8.1, II.8.10]

Let's prove that `~` such that `a ~ b ⇔ (b − a) ∈ ℤ` is an equivalence relation:
- reflexive: `∀(a ∈ ℝ), a ~ a` because:
```
⊦ a ~ a
⇔ (a − a) ∈ ℤ
⇔ 0 ∈ ℤ
⇔ ⊤
```
- symmetric: `∀(a ∈ ℝ) ∀(b ∈ ℝ), a ~ b ⇒ b ~ a` because:
```
⊦ a ~ b ⇔ b ~ a
⇒ (b−a) ∈ ℤ ⇔ (a−b) ∈ ℤ
⇒ |b−a| ∈ ℤ ⇔ |a−b| ∈ ℤ
⊦ |b−a| = |a−b|
⊦ a ~ b ⇔ (b − a) ∈ ℤ
⊦ b ~ a ⇔ (a − b) ∈ ℤ
∴ ⊤
```
- transitive: `∀(a ∈ ℝ) ∀(b ∈ ℝ) ∀(c ∈ ℝ), (a ~ b ∧ b ~ c) ⇒ a ~ c` because:
```
⊦ a ~ b ⇔ (b − a) ∈ ℤ
⊦ b ~ c ⇔ (c − b) ∈ ℤ
⊦ a ~ c ⇔ (c − a) ∈ ℤ
⇒ ((b−a) ∈ ℤ) ∧ ((c−b) ∈ ℤ)
⊦ + ∈ ℤ×ℤ→ℤ
⇒ (c−b)+(b−a) ∈ ℤ
⇒ (c−b+b−a) ∈ ℤ
⇒ (c−a) ∈ ℤ
∴ ⊤
```
As such, the quotient `ℝ/~` is described by "2 real numbers are related if their fractional part is identical"

Let's prove that `≈` such that `(a₁,a₂) ≈ (b₁,b₂) ⇔ (b₁ − a₁) ∈ ℤ ∧ (b₂ − a₂) ∈ ℤ` is an equivalence relation:
- reflexive: `∀(a ∈ ℝ²), a ≈ a` because:
```
⊦ a ≈ a
⇒ (a₁ − a₁) ∈ ℤ ∧ (a₂ − a₂) ∈ ℤ
⇒ 0 ∈ ℤ ∧ 0 ∈ ℤ
∴ ⊤
```
- symmetric: `∀(a ∈ ℝ²) ∀(b ∈ ℝ²), a ≈ b ⇒ b ≈ a` because:
```
⊦ (a₁,a₂)≈(b₁,b₂) ⇔ (b₁−a₁) ∈ ℤ ∧ (b₂−a₂) ∈ ℤ
⊦ (b₁,b₂)≈(a₁,a₂) ⇔ (a₁−b₁) ∈ ℤ ∧ (a₂−b₂) ∈ ℤ
⊦ (|b₁−a₁| = |a₁−b₁|) ∧ (|b₂−a₂| = |a₂−b₂|)
⇒ (|b₁−a₁| ∈ ℤ ⇔ |a₁−b₁| ∈ ℤ) ∧ (|b₂−a₂| ∈ ℤ ⇔ |a₂−b₂| ∈ ℤ)
⇒ ((b₁−a₁) ∈ ℤ ⇔ (a₁−b₁) ∈ ℤ) ∧ ((b₂−a₂) ∈ ℤ ⇔ (a₂−b₂) ∈ ℤ)
⇒ (a₁,a₂)≈(b₁,b₂) ⇔ (b₁,b₂)≈(a₁,a₂)
⇒ a≈b ⇔ b≈a
∴ ⊤
```
- transitive: `∀(a ∈ ℝ²) ∀(b ∈ ℝ²) ∀(c ∈ ℝ²), (a ≈ b ∧ b ≈ c) ⇒ a ≈ c` because:
```
⊦ (a₁,a₂)≈(b₁,b₂) ⇔ (b₁−a₁) ∈ ℤ ∧ (b₂−a₂) ∈ ℤ
⊦ (b₁,b₂)≈(c₁,c₂) ⇔ (c₁−b₁) ∈ ℤ ∧ (c₂−b₂) ∈ ℤ
⊦ (a₁,a₂)≈(c₁,c₂) ⇔ (c₁−a₁) ∈ ℤ ∧ (c₂−a₂) ∈ ℤ
⇒ ((b₁−a₁) ∈ ℤ ∧ (b₂−a₂) ∈ ℤ) ∧ ((c₁−b₁) ∈ ℤ ∧ (c₂−b₂) ∈ ℤ)
⊦ + ∈ ℤ×ℤ→ℤ
⇒ ((b₁−a₁) + (b₂−a₂)) + ((c₁−b₁) + (c₂−b₂)) ∈ ℤ
⇒ (b₁ − a₁ + b₂ − a₂) + (c₁ − b₁ + c₂ − b₂) ∈ ℤ
⇒ (b₁ − a₁ + b₂ − a₂ + c₁ − b₁ + c₂ − b₂) ∈ ℤ
⇒ (c₁ − a₁ + c₂ − a₂) ∈ ℤ
∴ ⊤ ???
```
As such, the quotient `ℝ/≈` is described by "2 real vectors are related if their resepctive components' fractional parts are identical"



---

## 1.2. Functions over sets

### 1.2.0. Lexicon

- [*function*](https://en.wikipedia.org/wiki/Function_(mathematics)): A function on sets is a relation where any element of its domain has exactly one relation pair coming out of it.
  `∀(A,B in Set) ∀(f ∈ (A → B)) ∀(a ∈ A) ⇒ ∃!(b ∈ B), f(a) = b`
- [*composition*](https://en.wikipedia.org/wiki/Function_composition): A operation that takes two functions, and creates a new function which is the application of one function after the other.
  `∀(A,B,C in Set) ∀(f ∈ A→B) ∀(g ∈ B→C), (g ∘ f)(x) = g(f(x))`
- [*identity*](https://en.wikipedia.org/wiki/Identity_(mathematics)): A morphism that relates any input element to the same (identical) output element.
  `∀(A in Set) ∀(id ∈ (A → A)) ∀(a ∈ A), id(a) = a`
- [*left-inverse*|*post-inverse*](https://en.wikipedia.org/wiki/Inverse_function#Left_inverses): A morphism which, when applied after, composes with the one before it to give the identity on its codomain
  In Set: `∀(f ∈ A→B) (f is injective) ⇔ (f has left-inverse)`
  In general: `g ∈ hom(B, A) is a post-inverse ⇔ ∃f ∈ hom(A, B) such that g ∘ f = id_A`
- [*right-inverse*|*pre-inverse*](https://en.wikipedia.org/wiki/Inverse_function#Right_inverses): A morphism which, when applied before, composes with the one after it to give the identity on its domain
  In Set: `∀(f ∈ A→B) (f is surjective) ⇔ (f has right-inverse)`
  In general: `f ∈ hom(A, B) is a pre-inverse ⇔ ∃g ∈ hom(B, A) such that g ∘ f = id_A`
- [*injective*](https://en.wikipedia.org/wiki/Injective_function): each and every input of the function is mapped to a different output
  `∀(f : A→B) (f is injective) ⇔ ∀(a₁,a₂ ∈ A) (a₁ = a₂ ⇒ f(a₁) = f(a₂))`
- [*surjective*](https://en.wikipedia.org/wiki/Surjective_function): every element of the function's codomain is mapped to by some input
  `∀(f : A→B) (f is surjective) ⇔ (∀b ∈ B) (∃a ∈ A), (b = f(a))`
- [*bijective*](https://en.wikipedia.org/wiki/Bijection): the function is both injective and surjective, each and every element from domain and codomain are mapped one-to-one
  `∀(f ∈ A→B) (f is bijective) ⇔ (f has two-sided inverse)`
- [*monomorphism*](https://en.wikipedia.org/wiki/Monomorphism): is a morphism which when applied in parallel after a pair of distinct morphisms, cannot make the overall two operations equal
  `∀(g in hom(B,C)) (g is monomorphism)
    ⇔ ∀(A) ∀(α₁,α₂ ∈ hom(A,B)) (g∘α₁ = g∘α₂ ⇒ α₁ = α₂)
    ⇔ ∀(C) ∀(α₁,α₂ ∈ hom(A,B)) (α₁ ≠ α₂ ⇒ g∘α₁ ≠ g∘α₂)`
- [*epimorphism*](https://en.wikipedia.org/wiki/Epimorphism): is a morphism which when applied in parallel before a pair of distinct morphisms cannot make the overall two operations equal
  `∀(f in hom(A,B)) (f is epimorphism)
    ⇔ ∀(C) ∀(β₁,β₂ ∈ hom(B,C)) (β₁∘f = β₂∘f ⇒ β₁ = β₂)
    ⇔ ∀(C) ∀(β₁,β₂ ∈ hom(B,C)) (β₁ ≠ β₂ ⇒ β₁∘f ≠ β₂∘f)`
- [*isomorphism*](https://en.wikipedia.org/wiki/Isomorphism): a morphism which has a two-sided inverse morphism
  `∀(f in hom(A,B)) (f is isomorphism) ⇔ (f has both a left-inverse and a right-inverse)`




### 1.2.1. How many different bijections are there between a set `S` with `n` elements and itself? [§II.2.1]

There are `n!` possible unique bijections. This is akin to asking how many permutations a deck of cards can have.

Imagine there are 3 elements, we have:
```
1→1 2→2 3→3
1→1 2→3 3→2
1→2 2→1 3→3
1→2 2→3 3→1
1→3 2→1 3→2
1→3 2→2 3→1
```
`3! = 6` possible bijections



### 1.2.2. Prove statement (2) in Proposition 2.1. You may assume that given a family of disjoint subsets of a set, there is a way to choose one element in each member of the family. [§2.5, V.3.3]

`∀A (A ≠ ∅)`
`∀B`
`∀f (f ∈ A → B)`
`∀(a',a") ∈ A² (a' ≠ a")`

#### 1.2.2.1. `f` has a left inverse iff it is injective

##### 1.2.2.1.⇒. assume `f` has a left inverse:
```
∃g (g ∈ B → A) (g∘f = id_A)
g(f(a')) = id_A(a') = a' ≠ a" = id_A(a") = g(f(a"))
```
##### 1.2.2.1.⇐. assume `f` is injective:
```
∷ a' ≠ a" ⇒ f(a') ≠ f(a")
∷ ∀a ∈ A
∷ ∀s ∈ A
∷ g ∈ B → A
∷ g(b) := a if b = f(a)
∷ g(b) := s if b ∉ im f
⇒ g∘f(a) = a = id_A(a)
```

#### 1.2.2.2. `f` has a right inverse iff it is surjective

##### 1.2.2.2.⇒. assume `f` has a right inverse:
```
∷ ∃g (g ∈ B → A) (f∘g = id_B)
∴ ∀(b ∈ B) (∃a ∈ A)    g(b)  = a
∴ ∀(b ∈ B) (∃a ∈ A)  f(g(b)) = f(a)
∴ ∀(b ∈ B) (∃a ∈ A)      b   = f(a)
```
##### 1.2.2.2.⇐. assume `f` is surjective:
```
∷ ∀(b ∈ B) ∃(a ∈ A), b = f(a)
g ∈ B → A

???
```



### 1.2.3. Prove that the inverse of a bijection is a bijection, and that the composition of two bijections is a bijection.

#### 1.2.3.1. prove that the inverse of a bijection is a bijection

`let f⁻¹ ∈ B → A | f⁻¹ ∘ f = id_A`

##### 1.2.3.1.a) show that `f⁻¹` is injective

```
let a,a' ∈ A    b  = f(a)    a  = f⁻¹(b)
let b,b' ∈ B    b' = f(a')   a' = f⁻¹(a)
```
```
if b ≠ b' ⇒     f(a)  ≠     f(a')
          ⇔ f(f⁻¹(b)) ≠ f(f⁻¹(b'))
          ⇔   f⁻¹(b)  ≠   f⁻¹(b')
```
therefore `f⁻¹` is injective

##### 1.2.3.1.b) show that `f⁻¹` is surjective

```py
∷ ∃(g ∈ B → A), g∘f = id_A
∴ ∀(a ∈ A) ∃(b ∈ B)     f(a) = b     # by definition of a function
∴ ∀(a ∈ A) ∃(b ∈ B)  g(f(a)) = g(b)  # by applying g to both sides
∴ ∀(a ∈ A) ∃(b ∈ B)        a = g(b)  # by cancellation
```
thus `a` has an antecedent by `g`, which is `b`, so `g` is surjective

#### 1.2.3.2. show that the composition of two bijections is a bijection

Let `f ∈ (A → B)` and `g ∈ (B → C)`, both bijective (hence with inverses in their respective function spaces).
Let
```
† ∀(h ∈ A → C), h = g ∘ f
† ∀(h⁻¹ ∈ C → A), h⁻¹ = f⁻¹ ∘ g⁻¹
```
We have:
```
h⁻¹ ∘ h = (f⁻¹ ∘ g⁻¹) ∘ (g ∘ f)
        = f⁻¹ ∘ g⁻¹ ∘ g ∘ f
        = f⁻¹ ∘ id_B ∘ f
        = f⁻¹ ∘ f
        = id_A
```
```
h ∘ h⁻¹ = (g ∘ f) ∘ (f⁻¹ ∘ g⁻¹)
        = g ∘ f ∘ f⁻¹ ∘ g⁻¹
        = g ∘ id_B ∘ g⁻¹
        = g ∘ g⁻¹
        = id_C
```
Therefore `h` and `h⁻¹` are two-sided inverses of each other, and thus bijections. From this we conclude that the composition of any two bijections is also a bijection.



### 1.2.4. Prove that ‘isomorphism’ is an equivalence relation (on any set of sets). [§4.1]

- reflexive: `∀A | A ≅ A` because:
	there is the identity function which is a one-to-one mapping of itself
- symmetric: `∀A ∀B | A ≅ B ⇒ B ≅ A` because:
	bijection being a perfect one-to-one mapping, it goes both ways
- transitive: `∀A ∀B ∀C | (A ≅ B ∧ B ≅ C) ⇒ A ≅ C` because:
	one can translate the one-to-one mapping of A→B, to B→C, because `|A| = |B| = |C|`



### 1.2.5. Formulate a notion of epimorphism, in the style of the notion of monomorphism seen in §2.6, and prove a result analogous to Proposition 2.3, for epimorphisms and surjections. [§2.6, §4.2]

#### 1.2.5.1. A function is injective iff it is a monomorphism.

monomorphism definition:
```
∀(A,B,Z) ∀(f ∈ A → B) ∀(α',α" ∈ Z → A), f∘α' = f∘α" ⇒ α' = α"
```

##### 1.2.5.1.⇒. assuming that `f` is injective, prove that it is a monomorphism.

By Proposition 2.1, if a function `f ∈ A → B` is injective, then it has a left inverse `g ∈ B → A`. 
Now assume that `α'`, `α"` are arbitrary functions from another set `Z` to `A`, and that `f ∘ α'= f ∘ α'` ; compose on the left by `g`, and use associativity of composition:
`(g ∘ f) ∘ α'= g ∘ (f ∘ α') = g ∘ (f ∘ α") = (g ∘ f ) ∘ α'` ;
since `g` is a left inverse of `f`, this says
`id_A ∘ α'= id_A ∘ α'`,
and therefore `α'= α"`, as needed to conclude that f is a monomorphism.

##### 1.2.5.1.⇐. assuming that `f` is a monomorphism, prove that it is injective.

This says something about arbitrary sets Z and arbitrary functions `Z → A`; we are going to use a microscopic portion of this information, choosing `Z` to be any singleton `{p}`. Then assigning functions `α',α" ∈ Z → A` amounts to choosing to which elements `a'= α'(p)`, `a"= α"(p)` we should send the single element `p` of `Z`. For this particular choice of `Z`, the property defining monomorphisms,

`f ∘ α'= f ∘ α" ⇒ α'= α'`
`f ∘ α'(p) = f ∘ α"(p) ⇒ α'= α'`
`f (a') = f (a") ⇒ α'= α"`
Now two functions from `Z = {p}` to `A` are equal if and only if they send `p` to the same element, so this says:
`f (a') = f (a") ⇒ a'= a'`
This has to be true for all `α'`, `α"`, that is, for all choices of distinct `a'`, `a"` in `A`. In other words, `f` has to be injective, as was to be shown.

#### 1.2.5.2. A function is surjective iff it is an epimorphism.

epimorphism definition:
```
∀(A,B) ∀(f ∈ A → B) ∀(g₁,g₂ ∈ B → A), g₁∘f = g₂∘f ⇒ g₁ = g₂
```

##### 1.2.5.2.⇒. assuming that `f` is surjective, prove that it is an epimorphism.

```py
† ∃(g ∈ B → A), f ∘ g = id_B # f is surjective, so it has pre-inverse
∷ ∀(Z) ∀((h₁,h₂) ∈ B → Z)
∷  h₁ ∘ f      = h₂ ∘ f
⇒ (h₁ ∘ f) ∘ g = (h₂ ∘ f) ∘ g
⇔ h₁ ∘ (f ∘ g) = h₂ ∘ (f ∘ g)
⇔ h₁ ∘ id_B    = h₂ ∘ id_B
⇔ h₁           = h₂
∴ h₁ ∘ f = h₂ ∘ f ⇒ h₁ = h₂
```

##### 1.2.5.2.⇐. assuming that `f` is a epimorphism, prove that it is surjective.

```py
† ∀(A,B) ∀(f ∈ A → B)
† ∀(g₁,g₂ ∈ B → A), g₁∘f = g₂∘f ⇒ g₁ = g₂ # f is epimorphism

∷ f is not surjection
⇒ ∃(x ∈ B), x ∉ f(A)

∷ ∀(g₁ ∈ B → A) ∀(g₂ ∈ B → A)
  | g₁∘f = g₂∘f
  | g₁ ≠ g₂

∷ Z = {a,b,c}
∷ g₁ = 
  | ∀(x ∈ f(A)), g₁(x) = a
  | ∀(x ∉ f(A)), g₁(x) = b
∷ g₂ = 
  | ∀(x ∈ f(A)), g₂(x) = a
  | ∀(x ∉ f(A)), g₂(x) = c
∴ g₁ ≠ g₂

∵ f ∈ A → B
∵ g₁∘f ∈ A → A
∵ g₂∘f ∈ A → A
∴ g₁∘f = g₂∘f = (x ⟼ a) ∈ (A → Z)
∴ f is not epimorphism
※ contradiction

∴ ∀(b ∈ B) ∃(a ∈ A), b = f(a) # f is surjective
```



### 1.2.6. With notation as in Example 2.4, explain how any function `f ∈ A → B` determines a section of `π_A`.

```
† ∀(f ∈ A → B)
∷ ∀(f^ ∈ A → A×B), f^ = (a ⟼ (a,f(a)))
⇒ f^(A) = Γ_f
⇒ π_A ∘ f^ = (a ⟼ a) = id_A
∴ f^ is a pre-inverse

   Γ_f ⊆ A × B
    (a, f(a))
  ^ |       |
  | | π_A   | π_B
f^| v       v
  ∪ v       v
 A ———————> B
 a    f    f(a)
```



### 1.2.7. Let `f ∈ A → B` be any function. Prove that the graph `Γ_f` of `f` is isomorphic to `A`.

```py
† ∀(f ∈ A → B)
∷ Γ_f := { (a,b) ∈ A×B | f(a) = b } ⊆ A×B # the graph contains all pairs
∵ ∀(a ∈ A) ∃!(b ∈ B), f(a) = b # since there is only one output b for each a
⇒ |Γ_f| = |A| # so there are as many elements (a,b) as (a)
∴ Γ_f ≅ { a ∈ A }
∴ Γ_f ≅ A
```
```py
† ∀(f ∈ A → B)

∵ cf previous exercise
† (f^ ∈ A → A×B) is injective
∴ Z ⊆ A×B
∴ Y = f⁻¹(Z) ⊆ A

∴ Z = Γ_f = f^(A)
∴ Y = A

∷ ∃(f¯ ∈ A → Γ_f), f¯ = (a ⟼ f^(a))
∴ f¯ is injective	∵ (f^ is injective) ∧ (Z ⊆ A×B) 
∴ f¯ is surjective	∵ (A = im_f)
∴ f¯ is bijective
∴ Γ_f ≅ A
```



### 1.2.8. Describe as explicitly as you can all terms in the canonical decomposition (cf. §2.8) of the function `ℝ → ℂ` defined by `r ⟼ e^(2·π·i·r)`. (This exercise matches one assigned previously, which one?)

```py
† ∀(f ∈ ℝ → ℂ), f(r) = e^(2·π·i·r)

  # canonical projection
	ℝ → S¹ ⊆ [0,1[
  # canonical bijection
	f(c) := e^(2πir)
  # canonical inclusion
	im_f = 𝕌 ⊆ ℂ

ℝ ——>> [0,1[ ——(e^(2πir))—> 𝕌 ——> ℂ
```
This matches exercise 1.6 done previously.



### 1.2.9. Show that if `A' ≅ A"` and `B' ≅ B"`, and further `A' ∩ B' = ∅` and `A" ∩ B" = ∅`, then `A' ∪ B' ≅ A" ∪ B"`. Conclude that the operation `A ⊔ B` (as described in §1.4) is well-defined *up to isomorphism* (cf. §2.9). [§2.9, 5.7]

??? "well-defined up to isomorphism" ?

```py
† A₁ ≅ A₂
† B₁ ≅ B₂
† A₁ ∩ B₁ = ∅
† A₂ ∩ B₂ = ∅

∷ ∃(f_A : A₁ → A₂), f_A is bijective
∷ ∃(f_B : B₁ → B₂), f_B is bijective

∷ ∃(f : A₁∪B₁ → A₂∪B₂)
  | ∀(a ∈ A₁)  f(a) = f_A(a)
  | ∀(b ∈ B₁)  f(b) = f_B(b)
∵ A₁ ∩ B₁ = ∅
∴ ∀(x ∈ A₁∪B₁) ∃!(y ∈ A₂∪B₂), f(x) = y

∷ ∃(g : A₂∪B₂ → A₁∪B₁)
  | ∀(a ∈ A₂)  g(a) = f⁻¹_A(a)
  | ∀(b ∈ B₂)  g(b) = f⁻¹_B(b)
∵ A₂ ∩ B₂ = ∅
∴ ∀(x ∈ A₂∪B₂) ∃!(y ∈ A₁∪B₁), f(x) = y

∴ g ∘ f = id_A₁ ∪ B₁
∴ f ∘ g = id_A₂ ∪ B₂
∴ g = f⁻¹
∴ f is bijective
∴ A₁ ∪ B₁ ≅ A₂ ∪ B₂
```
```py
∷ ∀(A,B)
∷ ∀(A₁,A₂,B₁,B₂)
  | A₁ = {1}×A ⇒ A ≅ A₁
  | A₂ = {2}×A ⇒ A ≅ A₂
  | B₁ = {1}×B ⇒ B ≅ B₁
  | B₂ = {2}×B ⇒ B ≅ B₂
∴ A₁ ∩ A₂ = ∅
∴ B₁ ∩ B₂ = ∅
∵ the previous proof above
∴ A₁ ∪ B₁ ≅ A₂ ∪ B₂

∴ (A ⊔ B) is well-defined up to isomorphism
```



### 1.2.10. Show that if `A` and `B` are finite sets, then `|B^A| = |B|^|A|`. [§2.1, 2.11, §II.4.1]

``` py
† ∃(n_A ∈ ℕ), n_A = |A| # A is a finite set
† ∃(n_B ∈ ℕ), n_B = |B| # B is a finite set
∴ |B|^|A| = n_B ^ n_A

† B^A = A → B   # B^A is the set of all functions from A to B
∵ ∀(f ∈ A → B) ∀(a ∈ A) ∃!(b ∈ B), f(a) = b   # f is a function
∴ we have n_B possible outputs, each of which is reached from n_A possible inputs
∴ |B^A| = n_B ^ n_A

∴ |B|^|A| = n_B ^ n_A = |B^A|
```



### 1.2.11. In view of Exercise 2.10, it is not unreasonable to use `2^A` to denote the set of functions from an arbitrary set `A` to a set with 2 elements (say `{0,1}`). Prove that there is a bijection between `2^A` and the *power set* of `A` (cf. §1.2). [§1.2, III.2.3]

```py
† ∃(n_A ∈ ℕ), n_A = |A| # A is a finite set
† 𝔹 = {0,1} # we denote 𝔹 the set with only two elements

∷ ∀(f ∈ A → 𝔹)
∴ ∀(a ∈ A) ∃!(b ∈ 𝔹), f(a) = b   # f is a function
∴ (f(a) = 0) ∨ (f(a) = 1)   # f only has two possible results
∴ f maps n_A inputs to 2 outputs so there are 2^n_A unique variations of f
∴ |𝔹^A| = 2^n_A = |𝓟(A)|
∴ there is bijection between 𝔹^A and 𝓟(A)
```
And, for an example that makes this easier to understand
```py
∷ A = {a,b,c}

𝓟(A) = {
  {},
  {a}, {b}, {c},
  {a,b}, {b,c}, {a,c},
  {a,b,c}
}

𝔹^A = {
  { (a⟼0)∧(b⟼0)∧(c⟼0) }
  { (a⟼1)∧(b⟼0)∧(c⟼0) }, { (a⟼0)∧(b⟼1)∧(c⟼0) }, { (a⟼0)∧(b⟼0)∧(c⟼1) },
  { (a⟼1)∧(b⟼1)∧(c⟼0) }, { (a⟼0)∧(b⟼1)∧(c⟼1) }, { (a⟼1)∧(b⟼0)∧(c⟼1) },
  { (a⟼1)∧(b⟼1)∧(c⟼1) }
}
```



---

## 1.3. Categories

### 1.3.0. Lexicon

- [*category*](https://en.wikipedia.org/wiki/Category_(mathematics)): A collection of "objects" that are linked by "arrows". A category has two basic properties: the ability to compose the arrows associatively and the existence of an identity arrow for each object.
- [*object*](https://en.wikipedia.org/wiki/Mathematical_object): an abstract entity arising in mathematics.
- [*morphism*|*arrow*](https://en.wikipedia.org/wiki/Morphism): a morphism is a directed/oriented form of transformation or relation between two objects, usually represneted as an arrow between two objects.
- [*hom-class*|*homset*](?): The collection of all morphisms from one object to another. If the hom-class behaves like a "set" (i.e. it is "small" enough) then we call it a *homset*. usually notated `hom_𝓒(𝐴,𝐵)` for a given category 𝓒 with objects 𝐴 and 𝐵.
- [*operation*](https://en.wikipedia.org/wiki/Operation_(mathematics)): Takes two objects and transforms those into one objects; a composition law.
- [*discrete category*](https://en.wikipedia.org/wiki/Discrete_category): a category in which all morphisms are identities.
- [*small category*](https://en.wikipedia.org/wiki/Category_(mathematics)#Small_and_large_categories): a category in which the amount of every object and every morphism (the cardinality) is computable.
- [*locally small category*](https://en.wikipedia.org/wiki/Category_(mathematics)#Small_and_large_categories): a category where the collection of objects has an uncomputable cardinal but any homset has a computable cardinal.
- [*large category*](https://en.wikipedia.org/wiki/Category_(mathematics)#Small_and_large_categories): a category in which the amount of every object and every morphism (the cardinality) is uncomputable.
- [*diagram*](https://en.wikipedia.org/wiki/Diagram_(category_theory)): ???
- [*commutative diagram*](https://en.wikipedia.org/wiki/Commutative_diagram): a diagram such that all directed paths in the diagram with the same start and endpoints lead to the same result.
- [*pointed set*|*based set*|*rooted set*](https://en.wikipedia.org/wiki/Pointed_set): a set in which a certain element is arbitrarily selected, and called the *base point*.
- [*dual category*|*opposite category*](https://en.wikipedia.org/wiki/Opposite_category): a category formed by reversing all the morphisms (interchanging the source and target of each arrow). usually notated 𝓒ᵒᵖ.
- [*comma category*](https://en.wikipedia.org/wiki/Comma_category): a category in which the objects are morphisms from some other category.
- [*slice category*/*overcategory*](https://en.wikipedia.org/wiki/Overcategory): special case of comma cateogries, created from using a fixed element of an ambient category as the morphism domain
- [*coslice category*/*undercategory*](https://en.wikipedia.org/wiki/Undercategory): special case of comma cateogries, created from using a fixed element of an ambient category as the morphism codomain
- [*bislice category*](?): special case of comma cateogries, created from using two fixed elements of an ambient cat as the morphism domain
- [*bicoslice category*](?): special case of comma cateogries, created from using two fixed elements of an ambient cat as the morphism codomain



### 1.3.0. Examples

ex.3.0.2. category of sets
```py
∷ let Set in Cat
∷ obj(Set) = all sets
∷ hom_Set(A,B) : B ^ A

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.3. preorder category on a set
```py
† S in obj(Set)
† ~ is relation
  | ∀(a), a ~ a                           # ~ is reflexive
  | ∀(a,b,c), a ~ b ∧ b ~ c ⇒ a ~ c     # ~ is transitive

∷ let Ṡ in Cat
∷ obj(Ṡ) = ∀(a ∈ S)
∷ hom_Ṡ(a,b) : if (a ~ b) then {(a,b)} else ∅

⊦ hasidentity:
  ∵ ∀(a ∈ S), a ~ a
  ∴ 1_a = (a,a) ∈ hom_Ṡ(a,a)   
⊦ composition:
  ∵ ∀(a,b,c), a~b ∧ b~c ⇒ a ~ c
  ∴ (g∘f := (a,c) ∈ hom_Ṡ(A,C))
⊦ associative:
  ∵ f=(a,b) ∧ g=(b,c) ∧ h=(c,d) ⇒ g∘f=(a,c) ∧ h∘g=(b,d)
  ∴ h∘(g∘f) = (a,d) = (h∘g)∘f
⊦ id_composit:
  ∷ ∀(f ∈ hom_Ṡ(a,b))
  ∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
  ∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```
ex.3.0.4. inclusion category on a powerset
```py
† S in obj(Set)
† ⊆ is relation

∷ let Ŝ in Cat
∷ obj(Ŝ) = 𝓟(S)
∷ hom_Ŝ(A,B) : if (A ⊆ B) then {0} else ∅

⊦ hasidentity:
  ∵ A ⊆ A
  ∴ 1_A ∈ hom_Ŝ(A,A)
⊦ composition:
  ∵ A ⊆ B ∧ B ⊆ C ⇒ A ⊆ C
  ∴ ∀(A→B) ∀(B→C) ∃(A→C)
⊦ associative:
  ?
⊦ id_composit:
  ?
```
ex.3.0.5. slice category (abstract)
```py
† 𝓒 in Cat
† A in obj(𝓒)

∷ let 𝓒_A in Cat
∷ obj(𝓒_A) = f in ⋃_{∀Z in obj(𝓒)} (hom_𝓒(Z,A))
∷ hom_{𝓒_A}(f₁,f₂) : σ_n such that ∃σ_o ∈ (hom_𝓒(Z₁,A) → hom_𝓒(Z₂,A))
commuting as below.
    ∀(Z₁ in obj(𝓒))
    ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.6. slice category (concrete)
```py
† 𝓒 in Cat
† A in obj(𝓒), A = 3
† S = ℤ
† ~ = ≤

∷ let 𝓒_{3} in Cat
∷ obj(𝓒_{3}) = (n,3) ∈ ℤ×ℤ  ∀(n ∈ ℤ | n ≤ 3)
∷ hom_𝓒_{3}(m,n) = ∀(m) ∀(n), ((m,3) → (n,3))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.6.0.BONUS. slice category (matrix)
```py
† 𝓒 = the subcategory of Vect_ℝ consisting of finite-dimensional vector spaces
† ℝ³ in obj(𝓒)   # the chosen slicing object
† A in hom_𝓒(ℝᴺ,ℝ³) ∀(N ∈ ℕ)
† B in hom_𝓒(ℝᴹ,ℝ³) ∀(M ∈ ℕ)
† C in hom_𝓒(ℝ³ˣᴺ, ℝ³ˣᴹ) ∀(N ∈ ℕ) ∀(M ∈ ℕ)

∷ let 𝓒_{ℝ³} in Cat
∷ obj(𝓒_{ℝ³}) = elements of the form A_{ℝ³} (or (ℝᴺ,A)) containing the same data as A, but existing in 𝓒_{ℝ³}
∷ hom_𝓒_{ℝ³}(A_{ℝ³},B_{ℝ³}) :
   ∀(C in hom_𝓒(ℝ³ˣᴺ, ℝ³ˣᴹ)), (A = B·C)
   ∃(σ in hom_𝓒_{ℝ³}(A_{ℝ³},B_{ℝ³})), σ(A_{ℝ³}) = B_{ℝ³}
   with σ containing the same data as C

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.7. coslice category (abstract)
```py
† 𝓒 in Cat
† A in obj(𝓒)

∷ let 𝓒^A in Cat
∷ obj(𝓒^A) = hom_𝓒(A,Z) ∀(Z in obj(𝓒))
∷ hom_𝓒^A(Z₁,Z₂) : σ ∈ (hom_𝓒(A,Z₁) → hom_𝓒(A,Z₂))
    ∀(Z₁ in obj(𝓒))
    ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.8. coslice category (concrete)
```py
† Set
† {*} in obj(Set), |{*}| = 1
† S in obj(Set)
† T in obj(Set)
† f in hom_Set({*},S)
† g in hom_Set({*},T)

∷ let Set^{*} in Cat
∷ obj(Set^{*}) = elements of the for f^*, having the same
  data as some morphism f ∈ ({*} → S) in Set
∷ hom_{Set^{*}}(f^*,g^*) :
   ∀(h in hom_Set(S, T)), (h·f = g)
   ∃(σ in hom_{Set^{*}}(f^*,g^*)), σ(f^*) = g^*
   with σ containing the same data as h

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.8.0.BONUS. coslice category (matrix)
```py
† 𝓒 = the subcategory of Vect_ℝ consisting of finite-dimensional vector spaces
† ℝ³ in obj(𝓒)   # the chosen slicing object
† A in hom_𝓒(ℝ³,ℝᴺ) ∀(N ∈ ℕ)
† B in hom_𝓒(ℝ³,ℝᴹ) ∀(M ∈ ℕ)
† C in hom_𝓒(ℝᴹˣ³, ℝᴺˣ³) ∀(N ∈ ℕ) ∀(M ∈ ℕ)

∷ let 𝓒^{ℝ³} in Cat
∷ obj(𝓒^{ℝ³}) = elements of the form A^{ℝ³} (or (ℝᴺ,A))
   containing the same data as A, but existing in 𝓒^{ℝ³}
∷ hom_{𝓒^{ℝ³}}(A^{ℝ³},B^{ℝ³}) :
   ∀(C in hom_𝓒(ℝᴹˣ³, ℝᴺˣ³)), (A = C·B)
   ∃(σ in hom_{𝓒^{ℝ³}}(B^{ℝ³},A^{ℝ³})), σ(B^{ℝ³}) = A^{ℝ³}
   with σ containing the same data as C

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.9. bislice category
```py
† 𝓒 in Cat
  | A in obj(𝓒)
  | B in obj(𝓒)

∷ let 𝓒_{A,B} in Cat
∷ obj(𝓒_{A,B}) = p in ⋃_{Z in obj(𝓒)} ( hom_𝓒(Z,A) × hom_𝓒(Z,B) )
∷ hom_{𝓒_{A,B}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (hom_𝓒(Z₁,A) × hom_𝓒(Z₁,B)) → (hom_𝓒(Z₂,A) × hom_𝓒(Z₂,B))
    commuting as below.
  ∀(Z₁ in obj(𝓒))
  ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.9.0.BONUS. bicoslice category
```py
† 𝓒 in Cat
  | A in obj(𝓒)
  | B in obj(𝓒)

∷ let 𝓒^{A,B} in Cat
∷ obj(𝓒^{A,B}) = p in ⋃_{Z in obj(𝓒)} ( hom_𝓒(A,Z) × hom_𝓒(B,Z) )
∷ hom_{𝓒^{A,B}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (hom_𝓒(A,Z₁) × hom_𝓒(B,Z₁)) → (hom_𝓒(A,Z₂) × hom_𝓒(B,Z₂))
    commuting as below.
  ∀(Z₁ in obj(𝓒))
  ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.10. fibered bislice category
```py
† 𝓒 in Cat
  | A in obj(𝓒)
  | B in obj(𝓒)
  | C in obj(𝓒)
  | α ∈ (A → C)
  | β ∈ (B → C)

∷ let 𝓒_{α,β} in Cat
∷ obj(𝓒_{α,β}) = p in ⋃_{Z in obj(𝓒)} ( hom_𝓒(Z,A) × hom_𝓒(Z,B) )
  | α ∘ f = β ∘ g
∷ hom_{𝓒_{α,β}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (hom_𝓒(Z₁,A) × hom_𝓒(Z₁,B)) → (hom_𝓒(Z₂,A) × hom_𝓒(Z₂,B))
    commuting as below.
  ∀(Z₁ in obj(𝓒))
  ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.0.11. fibered bicoslice category
```py
† 𝓒 in Cat
  | A in obj(𝓒)
  | B in obj(𝓒)
  | C in obj(𝓒)
  | α ∈ (C → A)
  | β ∈ (C → B)

∷ let 𝓒^{α,β} in Cat
∷ obj(𝓒^{α,β}) = p in ⋃_{Z in obj(𝓒)} ( hom_𝓒(A,Z) × hom_𝓒(B,Z) )
  | f ∘ α = g ∘ β
∷ hom_{𝓒^{α,β}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (hom_𝓒(A,Z₁) × hom_𝓒(B,Z₁)) → (hom_𝓒(A,Z₂) × hom_𝓒(B,Z₂))
    commuting as below.
  ∀(Z₁ in obj(𝓒))
  ∀(Z₂ in obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```



### 1.3.1. Let C be a category. Consider a structure 𝓒ᵒᵖ with: `Obj(Cop ) := Obj(C)`; `∀(A,B in obj(𝓒(ᵒᵖ)), hom_𝓒ᵒᵖ(A,B) := hom_𝓒(B,A)`. Show how to make this into a category (that is, define composition of morphisms in 𝓒ᵒᵖ and verify the properties listed in §3.1). Intuitively, the ‘opposite’ category 𝓒ᵒᵖ is simply obtained by ‘reversing all the arrows’ in C. [5.1, §VIII.1.1, §IX.1.2, IX.1.10]

```py
† 𝓒 in Cat

∷ let 𝓒ᵒᵖ in Cat
∷ obj(𝓒ᵒᵖ) = obj(𝓒)
∷ hom_𝓒ᵒᵖ(A,B) = ∀(A,B) in obj(𝓒), hom_𝓒(B,A)

⊦ hasidentity:
  ∵ ∃(1_A ∈ hom_𝓒(A,A))
  ∴ ∃(1_A ∈ hom_𝓒ᵒᵖ(A,A))
⊦ composition:
  ∵ ∀(f ∈ C→B) ∀(g ∈ B→A) ∃(h ∈ C→A)
  ∴ ∀(g`∈ A→B) ∀(f`∈ B→C) ∃(h`∈ A→C)
⊦ associative:
  ∵ ∀(f,g,h ∈ hom_𝓒())   h∘(g∘f) = (h∘g)∘f
  ∴ ∀(f,g,h ∈ hom_𝓒ᵒᵖ()) h∘(g∘f) = (h∘g)∘f
⊦ id_composit:
  ∷ ∀(f ∈ hom_𝓒ᵒᵖ(a,b))
  ∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
  ∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```



### 1.3.2. If `A` is a finite set, how large is `End_{Set}(A)`?

```py
† A in Set, ∃(n ∈ ℕ) |A| = n

∵ End_Set(A) = hom_Set(A,A)
∴ |End_Set(A)| = |hom_Set(A,A)| = |A|^|A| = n ^ n # all the possible mappings of input-to-output within finite set A
```



### 1.3.3. Formulate precisely what it means to say that `1_a` is an identity with respect to composition in Example 3.3, and prove this assertion. [§3.2]

```py
∷ ∀(f ∈ hom_Ṡ(a,b))
∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```



### 1.3.4. Can we define a category in the style of Example 3.3, using the relation `<` on the set `ℤ`?

```py
† ℤ in obj(Set)
† < is relation

∷ let 𝓩 in Cat
∷ obj(𝓩) = ∀(z ∈ ℤ)
∷ hom_𝓩(a,b) = (a,b) if (a < b) else ∅

⊦ hasidentity:
  ∵ ∀(a ∈ ℤ), (a < a)
  ※ # cannot be strictly inferior to itself
  ∴ ∄(1_a ∈ hom_𝓩(a,a)), (a,a)
  ※ # no identity function
⊦ composition:
  ∵ ∀(a,b,c), a<b ∧ b<c ⇒ a < c
  ∴ (g∘f := (a,c) ∈ hom(A,C))
⊦ associative:
  ∵ f=(a,b) ∧ g=(b,c) ∧ h=(c,d) ⇒ g∘f=(a,c) ∧ h∘g=(b,d)
  ∴ h∘(g∘f) = (a,d) = (h∘g)∘f
⊦ id_composit:
  ?
```



### 1.3.5. Explain in what sense Example 3.4 is an instance of the categories considered in Example 3.3. [§3.2]

Well, `⊆` is a reflexive and transitive order relation:
```py
⊦ ⊆ is reflexive:   ∀(a), a ⊆ a                       
⊦ ⊆ is transitive:  ∀(a,b,c), (a ⊆ b) ∧ (b ⊆ c) ⇒ (a ⊆ c) 
```
So `⊆` is really just a concrete example of the abstract relation `~`.



### 1.3.6. (Assuming some familiarity with linear algebra.) Define a category `𝓥` by taking `obj(𝓥) = ℕ`, and `hom_𝓥(n,m) = the set of (m × n) matrices with real entries, for all n, m ∈ N`. (I will leave the reader the task to make sense of a matrix with 0 rows or columns.) Use product of matrices to define composition. Does this category ‘feel’ familiar? [§VI.2.1, §VIII.1.3]

```py
∷ let 𝓥 in Cat
∷ obj(𝓥) = ℕ
∷ hom_𝓥(n,m) = ∀(n,m) ∈ ℕ² | Mat(ℝ, n × m)

⊦ hasidentity:
  
  ∴ ∃(1_A ∈ hom_𝓥(n,m))
⊦ composition:
  ?
⊦ associative:
  ?
⊦ id_composit:
  ?
```



### 1.3.7. Define carefully objects and morphisms in Example 3.7, and draw the diagram corresponding to composition. [§3.2]

```py
† 𝓒 in Cat # from previous example ex3.5
∷ A in obj(𝓒)

∷ let 𝓒_A in Cat
∷ obj(𝓒_A) = ∀(Z in obj(𝓒)), hom_𝓒(A,Z)
∷ hom_𝓒_A(Z₁,Z₂) = ∀(Z₁ in obj(𝓒)) ∀(Z₂ in obj(𝓒)), (hom_𝓒(A,Z₁),hom_𝓒(A,Z₂))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
```
∀(f in hom_𝓒_A(Z₁,Z₂))
∃(f₁,f₂):

        A         
      ↙   ↘       
    f₁ —f→ f₂     
   ↙         ↘   
 Z₁  ———σ——→  Z₂ 

∀(g in hom_𝓒_A(Z₃,Z₄))
f ∘ g:

          A           
      ↙   ↓   ↘       
    a —f→ b —g→ c     
  ↙       ↓       ↘   
 Z₁ ——σ—→ Z₂ ——τ—→ Z₃ 

```



### 1.3.8. A subcategory 𝓒' of a category 𝓒 consists of a collection of objects of 𝓒, with morphisms `∀(A,B in obj(𝓒)), hom_𝓒(A,B) ⊆ hom_𝓒(A,B)`, such that identities and compositions in 𝓒 make 𝓒' into a category. A subcategory 𝓒' is full if `∀(A,B in obj(𝓒)), hom_𝓒(A,B) = hom_𝓒(A,B)`. Construct a category of infinite sets and explain how it may be viewed as a full subcategory of `Set`. [4.4, §VI.1.1, §VIII.1.3]

```py
∷ ∃(InfSet, ∀(A in obj(Set)), ∄(n ∈ ℕ), |A| = n)
∴ InfSet is subcategory of Set
  ∵ (InfSet) inherits from (Set) all identity morphisms
  ∵ (InfSet) inherits from (Set) all composition rules
  ∵ (InfSet) inherits from (Set) all associativity rules
∵ all is conserved, and homsets between infinite sets are also infinite
∴ InfSet is full subcategory of Set
```



### 1.3.9. An alternative to the notion of multiset introduced in §2.2 is obtained by considering sets endowed with equivalence relations; equivalent elements are taken to be multiple instances of elements ‘of the same kind’. Define a notion of morphism between such enhanced sets, obtaining a category `MSet` containing (a ‘copy’ of) `Set` as a full subcategory. (There may be more than one reasonable way to do this! This is intentionally an open-ended exercise.) Which objects in `MSet` determine ordinary multisets as defined in §2.2, and how? Spell out what a morphism of multisets would be from this point of view. (There are several natural notions of morphisms of multisets. Try to define morphisms in `MSet` so that the notion you obtain for ordinary multisets captures your intuitive understanding of these objects.) [§2.2, §3.2, 4.5]

```py
∷ let MSet in Set
?
```



### 1.3.10. Since the objects of a category 𝓒 are not (necessarily) sets, it is not clear how to make sense of a notion of ‘subobject’ in general. In some situations it does make sense to talk about subobjects, and the subobjects of any given object `A` in `𝓒` are in one-to-one correspondence with the morphisms `A → Ω` for a fixed, special object `Ω` of `𝓒`, called a subobject classifier. Show that `Set` has a subobject classifier.

```py
† 𝓒 in Cat | obj(𝓒) = Set
† A in obj(𝓒)

A → Ω
⊦ subobject classifier :
  ∷ ∃(𝔹 in obj(Set)), 𝔹 = {0,1}
  ∴ ∀(B in obj(Set)) ∀(A in obj(Set)), A ⊆ B
    ∃(f : B → 𝔹 | ∀(b ∈ B | f(b) = 1 ⇔ b ∈ A) else f(b) = 0)
  ∵ 𝓟(S) = { ∃(f ∈ S → 𝔹), ∀(a ∈ S), f(a) = 1 }
  ∴ Ω = {0,1} = 𝔹
```



### 1.3.11. Draw the relevant diagrams and define composition and identities for the category `𝓒^{A,B}` mentioned in Example 3.9. Do the same for the category `𝓒_{α,β}` mentioned in Example 3.10. [§5.5, 5.12]

```py

```



---

## 1.4. Morphisms

### 1.4.0. Lexicon

- [*groupoid*](https://en.wikipedia.org/wiki/Groupoid): a category in which every morphism is an isomorphism.
- [*endomorphism*](https://en.wikipedia.org/wiki/Endomorphism): a morphism from some object 𝐴 to itself.
- [*automorphism*](https://en.wikipedia.org/wiki/Automorphism): an isomorphism from some object 𝐴 to itself.



### 1.4.1. Composition is defined for two morphisms. If more than two morphisms are given, e.g.: `A —f→ B —g→ C —h→ D —i→ E`, then one may compose them in several ways.

#### 1.4.1.1. For example: `(ih)(gf)`, `(i(hg))f`, `i((hg)f)`, etc. so that at every step one is only composing two morphisms.

```py
⊦ parentheses dont matter in this case with 5 sets
  ⊦ composition is associative
  ∷ h∘(g∘f)(x) = h(g∘f(x)) = h(g(f(x)) = h∘g(f(x)) = (h∘g)∘f(x)
  ∴ h∘(g∘f)(x) = (h∘g)∘f(x)
∴ (i∘h)∘(g∘f)(x) = (i∘(h∘g))∘f(x) = i∘((h∘g)∘f)(x)
```

#### 1.4.1.2. Prove that the result of any such nested composition is independent of the placement of the parentheses.

```py
† 𝓒 in Cat
† ∀(A,B,C,D in obj(𝓒))
† ∀(f ∈ hom_𝓒(A,B))
† ∀(g ∈ hom_𝓒(B,C))
† ∀(h ∈ hom_𝓒(C,D))

⊦ parentheses dont matter for any nested composition
  ⊦ inductive base step
    ⊦ composition is associative
    ∷ h∘(g∘f)(x) = h(g∘f(x)) = h(g(f(x)) = h∘g(f(x)) = (h∘g)∘f(x)
    ∴ h∘(g∘f)(x) = (h∘g)∘f(x)
  ⊦ inductive next step
    ∷ ∃(n ∈ ℕ | n ≥ 3)
    ∷ P(n): n-leaf tree can be re-ordered associatively to become a comb
    ⊦ the (n+1)-tree can be re-ordered associatively to become a comb
      ∷ ∃𝕬 ∈ (n+1)-leaf tree
      ∷ ∃h be the innermost operation in 𝕬 (i.e. h = (f_i+1 ∘ f_i))
      if i = 1 then we use associativity once to extract f_1,
        and we redefine h and i to correspond to the new innermost operation in 𝕬
      ∷ ∃𝕭 ∈ (n)-leaf tree, created by replacing (f_i+1 ∘ f_i) with h
      We apply P(n) to 𝕭, extracting f_1 so that it is an operand of the lowest priority operation
      ∷ ∃𝕮 ∈ (n)-leaf tree with every leaf but f_1
      We apply P(n) to 𝕮 to make it into an (n)-comb
      ∴ 𝕬 has now been reordered into an (n+1)-comb
      ∴ given that any (n)-leaf tree can become a comb, any (n+1)-leaf tree can become comb too
  ∴ in any nested composition of morphisms, parentheses do not matter
```



### 1.4.2. In Example 3.3 we have seen how to construct a category from a set endowed with a relation, provided this latter is reflexive and transitive. For what types of relations is the corresponding category a groupoid (cf. Example 4.6)?

A groupoid is a category in which every morphism is an isomorphism.
An isomorphism is a morphism which has both left-inverse and right-inverse.
```py
∴ ∀m morphism (a ~ b) ∃m⁻¹ (b ~ a)
∴ binary relation symmetry for all morphisms ⇔ groupoid
∴ ∀S in Set | there is an equivalence relation is a groupoid
```



### 1.4.3. Let `A`, `B` be objects of a category `𝓒`, and `f ∈ hom_𝓒(A, B)` a morphism.

#### 1.4.3.1. Prove that if `f` has a right-inverse, then `f` is an epimorphism.

```py
† 𝓒 is Cat
† ∀(A,B in obj(𝓒))
† f ∈ hom_𝓒(A,B)

∷ ∃(g ∈ hom(B,A)), g∘f = id_A
∷ ∀(C) ∀(β₁,β₂ ∈ hom(B,C))
∷ β₁∘f = β₂∘f
  ⇒ (β₁∘f)∘g = (β₂∘f)∘g
  ⇒ β₁∘(f∘g) = β₂∘(f∘g)
  ⇒ β₁∘id_A = β₂∘id_A
  ⇒ β₁ = β₂
∴ (β₁∘f = β₂∘f ⇒ β₁ = β₂)
```

#### 1.4.3.2. Show that the converse does not hold, by giving an explicit example of a category and an epimorphism without a right-inverse.

```py
ex: ℤ and ≤

⊦ (ℤ,≤) is epimorphism
  ∷ hom(1,2), 1≤2 = single morphism
  ∷ hom(2,1), 2≤1 = ∅
  ∴ (β₁∘(≤) = β₂∘(≤) ⇒ β₁ = β₂) # trivial..?
⊦ (ℤ,≤) has no right-inverse
  ∷ ∃f | 
```



### 1.4.4. Prove that the composition of two monomorphisms is a monomorphism. Deduce that one can define a subcategory `𝓒ₘₒₙₒ` of a category `𝓒` by taking the same objects as in `𝓒`, and defining `hom_𝓒ₘₒₙₒ(A,B)` to be the subset of `hom_𝓒(A, B)` consisting of monomorphisms, for all objects `A`, `B`. (Cf. Exercise 3.8; of course, in general `𝓒ₘₒₙₒ` is not full in `𝓒`.)

#### 1.4.4.1. Do this for monomorphisms.

```py
† ∃(𝓒 in Cat)
† ∀(A,B,C,Z ∈ in obj(𝓒))
∷ ∀(f ∈ hom_𝓒(A,B)), f is monomorphism
∷ ∀(g ∈ hom_𝓒(B,C)), g is monomorphism
⊦ (g ∘ f) is monomorphism
  ∷ ∀(α₁ ∈ hom_𝓒(Z,A))
  ∷ ∀(α₂ ∈ hom_𝓒(Z,A))
  ∷ (g ∘ f) ∘ α₁ = (g ∘ f) ∘ α₂
  = g ∘ (f ∘ α₁) = g ∘ (f ∘ α₂) # ∵ composition is associative
  ⇒ f ∘ α₁ = f ∘ α₂  # ∵ g is monomorphism
  ⇒ α₁ = α₂          # ∵ f is monomorphism
∴ ((g ∘ f) ∘ α₁ = (g ∘ f) ∘ α₂) ⇒ (α₁ = α₂)

⊦ hasidentity:
  ∵ identity morphisms are isomorphisms, so they are also monomorphisms
  ∴ 𝓒ₘₒₙₒ inherits all identity morphisms from 𝓒
⊦ composition:
  ∵ composing monomorphisms only yields monomorphisms
  ∴ 𝓒ₘₒₙₒ is closed category when considering composition
⊦ associative: ?
⊦ id_composit: ?
```

#### 1.4.4.2. Do the same for epimorphisms.

```py
† ∃𝓒 in Cat
† ∀(A,B,C,Z ∈ in obj(𝓒))
∷ ∀(f ∈ hom_𝓒(A,B)), f is epimorphism
∷ ∀(g ∈ hom_𝓒(B,C)), g is epimorphism
⊦ (g ∘ f) is epimorphism
  ∷ ∀(β₁ ∈ hom_𝓒(Z,A))
  ∷ ∀(β₂ ∈ hom_𝓒(Z,A))
  ∷ β₁ ∘ (g ∘ f) = β₂ ∘ (g ∘ f)
  = (β₁ ∘ g) ∘ f = (β₂ ∘ g) ∘ f # ∵ composition is associative
  ⇒ β₁ ∘ g = β₂ ∘ g  # ∵ g is epimorphism
  ⇒ β₁ = β₂          # ∵ f is epimorphism
∴ ((g ∘ f) ∘ β₁ = (g ∘ f) ∘ β₂) ⇒ (β₁ = β₂)

⊦ hasidentity:
  ∵ identity morphisms are isomorphisms, so they are also epimorphisms
  ∴ 𝓒ₘₒₙₒ inherits all identity morphisms from 𝓒
⊦ composition:
  ∵ composing epimorphisms only yields epimorphisms
  ∴ 𝓒ₘₒₙₒ is closed category when considering composition
⊦ associative: ?
⊦ id_composit: ?
```

#### 1.4.4.3. Can you define a subcategory `𝓒ₙₒₙₘₒₙₒ` of `𝓒` by restricting to morphisms that are not monomorphisms?

```py
∷ 𝓒ₙₒₙₘₒₙₒ is 𝓒 but without identity morphisms
∴ 𝓒ₙₒₙₘₒₙₒ ∵ a category must have identity
```



### 1.4.5. Give a concrete description of monomorphisms and epimorphisms in the category `MSet` you constructed in Exercise 3.9.

```py

```



## 1.5. Universal Properties

### 1.5.0. Lexicon

- [*initial object*](https://en.wikipedia.org/wiki/Initial_and_terminal_objects): An object such that between it and every other, there is exactly one morphism from it to any other object.
  `∀𝓒, ∀(I in obj(𝓒)), I is initial ⇔ ∀(A ∈ obj(𝓒)), |hom_𝓒(I, A)| = 1`
- [*final object*](https://en.wikipedia.org/wiki/Initial_and_terminal_objects): An object such that between it and every other, there is exactly one morphism from any other object to it.
  `∀𝓒, ∀(F in obj(𝓒)), F is final ⇔ ∀(A ∈ obj(𝓒)), |hom_𝓒(A, F)| = 1`
- [*terminal object*](https://en.wikipedia.org/wiki/Initial_and_terminal_objects): An object that is either *initial* or *final*.
  `∀𝓒, ∀(T in obj(𝓒)), T is terminal ⇔ (T is initial) ∨ (T is final)`
- [*zero object*|*null object*](https://en.wikipedia.org/wiki/Initial_and_terminal_objects): An object that is both *initial* and *final*.
  `∀𝓒, ∀(Z in obj(𝓒)), Z is zero-object ⇔ (Z is initial) ∧ (Z is final)`
- [*universal property*](https://en.wikipedia.org/wiki/Universal_property): a property that characterizes up to an isomorphism the result of some constructions
```
∀ 𝓒,𝓓
∀ F : 𝓒 → 𝓓
∀ X in obj(𝓓)
∀ A,A' in obj(𝓒))
∀ h : A → A'
∃(A,u : X → F(A)) in 𝓓
∀(f : X → F(A') in 𝓓), ∃(h : A → A' in 𝓒), h is unique
```



### 1.5.1. Prove that a final object in a category 𝓒 is initial in the opposite category 𝓒ᵒᵖ (cf. Exercise 3.1).

```py
† ∀(𝓒 in Cat) ∃𝓒ᵒᵖ | ∀(A,B in obj(𝓒))  hom_𝓒(A,B) = hom_𝓒ᵒᵖ(B,A)
† ∀(F in obj(𝓒)), F is final ⇔ ∀(A ∈ obj(𝓒)), |hom_𝓒(A,F)| = 1
∷ hom_𝓒(A,F) = hom_𝓒ᵒᵖ(F,A)
∴ |hom_𝓒ᵒᵖ(F,A)| = 1
∴ ∀(F in obj(𝓒ᵒᵖ)) is initial
```



### 1.5.2. Prove that `∅` is the unique initial object in `Set`. [§5.1]

```py
† ∀(∅ in obj(Set)), ∅ is initial ⇔ ∀(A in obj(Set)), |hom_{Set}(∅,A)| = 1
∷ ∃(Z in obj(Set)), Z is initial ⇔ ∀(A in obj(Set)), |hom_{Set}(Z,A)| = 1
∵ ∀(A,B in Set) ∀(f ∈ (A → B)) ∀(a ∈ A) ⇒ ∃!(b ∈ B), f(a) = b # functions in Set have a unique output
∴ |hom_{Set}(∅,A)| = |hom_{Set}(Z,A)| = 1 
∴  hom_{Set}(∅,A)  ≅  hom_{Set}(Z,A)  # at least, in Set
∴ |A|^|∅| = |A|^|Z| = |A|^0
∴ |∅| = |Z| = 0
∴ ∅ ≅ Z
∴ ∅ is the only object with 0 cardinal
∴ ∅ is the unique initial object in Set
```



### 1.5.3. Prove that final objects are unique up to isomorphism. [§5.1]

```py
† ∀(𝓒 a category)
∷ ∀(F₁ in obj(𝓒)), F₁ is final ⇔ ∀(A in obj(𝓒)), |hom_𝓒(A,F₁)| = 1
∷ ∀(F₂ in obj(𝓒)), F₂ is final ⇔ ∀(A in obj(𝓒)), |hom_𝓒(A,F₂)| = 1
† ∀(F in obj(𝓒)), ∃(1_F in hom_𝓒(F,F))
∴ F₁ is final ⇒ ∃!(f ∈ F₂ → F₁)
∴ F₂ is final ⇒ ∃!(g ∈ F₁ → F₂)
∴ f∘g ∈ F₁ → F₁ = 1_F₁
∴ g∘f ∈ F₂ → F₂ = 1_F₂
∴ f∘g and g∘f are inverses of each other
∴ f is isomorphism
∴ g is isomorphism
∴ F₁ ≅ F₂
```



### 1.5.4. What are terminal objects in the category of ‘pointed sets’ (Example 3.8)? Are they unique?

```py
† Set* in Cat
† ∀(A = {*})
† ∀(S in Set) ∀(s ∈ S)
∴ ∀(P in obj(Set*)) = f ∈ {*} → S = (S,s)
† ∅ ∉ Set*
∷ (Z,z) in obj(Set*)
∷ ({∗},∗) # the singleton pointed set
⊦ ({∗},∗) is initial
  ∵ ∀((S,s),(T,t) in obj(Set*)), ∀(σ ∈ S → T), σ(s) = t
  # Pointed set functions are like set functions, but preserve the point
  ∴ hom_{Set*}(({∗},∗),(Z,z)) = { (∗,z) }
  ∴ |hom_{Set*}(({∗},∗),(Z,z))| = 1
  ∴ ({∗},∗) is initial
⊦ ({∗},∗) is final
  ∴ hom_{Set*}((Z,z),({∗},∗)) = { f } where ∀(x ∈ Z), f(x) = ∗
  # only function in Set, and there are equal or less functions for corresponding pointed set homsets
  ∴ |hom_{Set*}((Z,z),({∗},∗))| = 1
  ∴ ({∗},∗) is final
⊦ are they unique ?
  ∵ initial objects are unique up to isomorphism
  ∵ final objects are unique up to isomorphism
  ∴ they are unique
```



### 1.5.5. What are the final objects in the category considered in §5.3? [§5.3]

```py
∷ s ∈ A → A/~  | s is surjective
∷ ∀Z₁, φ₁ ∈ A → Z₁
∷ ∀Z₂, φ₂ ∈ A → Z₂
∷ σ ∈ Z₁ → Z₂ | σ∘φ₁ = φ₂
∷ f₁ ∈ A/~ → Z₁ | s∘f₁ = φ₁
∷ f₂ ∈ A/~ → Z₂ | s∘f₂ = φ₂

∴ ∀(σ_𝓠 ∈ (φ₁,Z₁) → (φ₂,Z₂)), ∃σ ∈ (Z₁ → Z₂)
  ∧ σ∘φ1 = φ2
  ∧ ∀(a₁,a₂ ∈ A), a₁ ∼ a₂ ⇒ φ(a₁) = φ(a₂)

⊦ initial objects
  ∷ φ₁ = id_A
  ∴ σ∘φ₁ = σ∘id_A = σ = φ₂
  ∴ ∃!σ in obj(𝓠)
  ∴ initial object in 𝓠 is id_A
⊦ final objects
  ∷ F in obj(𝓒)
  ∷ t in hom_𝓒(A,F), t is unique
  ∷ σ∘φ = t
  ∵ F is final in 𝓒, ∃σ | σ is unique
  ∴ ∀((φ,Z) in obj(𝓒_A)), ∃!σ_𝓒_A
  ∴ final object in 𝓠 is (t,F) if ∃(F in obj(𝓒)), F is final
```



### 1.5.6. Consider the category corresponding to endowing (as in Example 3.3) the set `ℤ⁺` of positive integers with the divisibility relation. Thus there is exactly one morphism `d → m` in this category if and only if `d` divides `m` without remainder; there is no morphism between `d` and `m` otherwise. [§VII.5.1] Show that this category has products and coproducts. What are their ‘conventional’ names?

Their names are respectively "lcm" (lowest common multiple) and "gcd" (greatest common divisor).



### 1.5.7. Redo Exercise 2.9, this time using Proposition 5.4. Show that if `A' ≅ A"` and `B' ≅ B"`, and further `A' ∩ B' = ∅` and `A" ∩ B" = ∅`, then `A' ∪ B' ≅ A" ∪ B"`. Conclude that the operation `A ⊔ B` (as described in §1.4) is well-defined *up to isomorphism* (cf. §2.9). [§2.9, 5.7]

```py
∷ 𝓒 in Cat
∷ A, A₁,A₂ in obj(𝓒)
∷ B, B₁,B₂ in obj(𝓒)
# primes and doubleprimes are isomorphic
∷ A₁ ≅ A₂
∷ B₁ ≅ B₂
# A and B don't overlap
∷ A₁ ∩ B₁ = ∅
∷ A₂ ∩ B₂ = ∅
# the unions of A and B are isomorphic
∷ A₁ ∪ B₁ ≅ A₂ ∪ B₂
# their initial and final objects are isomorphic
∷ ∀(I₁,I₂) initial in obj(𝓒), (I₁ ≅ I₂)
∷ ∀(F₁,F₂)   final in obj(𝓒), (F₁ ≅ F₂)

⊦ A ⊔ B # a = b ⇒ f(a) = f(b) # well-defined up to isomorphism
  ???
  ∴ (A₁ ∪ B₁) is initial object of Setᴬ₁⁻ᴮ₁
  ∴ (A₂ ∪ B₂) is initial object of Setᴬ₂⁻ᴮ₂

```



### 1.5.8. Show that in every category `𝓒` the products `A × B` and `B × A` are isomorphic, if they exist. (Hint: observe that they both satisfy the universal property for the product of `A` and `B`, then use Proposition 5.4.)

```py
∷ 𝓒 in Cat
∷ A,B in obj(𝓒)
† unique(a in obj(𝓒)) = ∀(b in obj(𝓒)), a = b
# universal property of products
† ∀(Z in obj(𝓒)) ∀(f,g in obj(𝓒^{A,B}) , unique(⟨f,g⟩ : Z → A × B)
# any pair of initial and final objects are isomorphic
† ∀(I₁,I₂) initial in obj(𝓒), (I₁ ≅ I₂)
† ∀(F₁,F₂)   final in obj(𝓒), (F₁ ≅ F₂)

⊦ (A × B) ≅ (B × A)
  ∷ 𝓒^{A,B} # consider the bi-coslice category
  | obj(𝓒^{A,B}) = (Z,f,g)
  | hom_𝓒^{A,B}(Z₁,Z₂) = σ_{A,B} : (Z₁,f₁,g₁) → (Z₂,f₂,g₂)
  ∷ Z₂ = (A×B)
  | ∴ σ_{A,B} is unique
  | ∴ Z₂ is final
  ∷ Z₂ = (B×A)
  | ∴ σ_{A,B} is unique
  | ∴ Z₂ is final
  ∴ (A×B is final) ∧ (B×A is final)
  ∵ ∀(F₁,F₂) final in obj(𝓒), (F₁ ≅ F₂)
  ∴ (A × B) ≅ (B × A)
```



### 1.5.9. Let 𝓒 be a category with products.

#### 1.5.9.1. Find a reasonable candidate for the universal property that the product `A × B × C` of three objects of 𝓒 ought to satisfy.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZAZgBoAGAXVJADcBDAGwFcYkQBBEAX1PU1z5CKcqQCM1Ok1bsAWjz4gM2PASIAmcZIYs2iTgHWAQgYDCC-iqFEyEmjpn6jFpQNXCSpddul6Q57kkYKABzeCJQADMAJwgAWyQxGhwIJFEpXXZIgH0uGkZ6ACMYRgAFN2t9RhhInBAaYrAoJGJyXijYhMQkkBSW+18s7Od8opLyqzV9aKwQgAs6hpgmpABaVvaQGPjE5NTEABYBzP0c81HisoqpkBn5xZBG5sR1tsVtrp6+xE0MxxBAMPA9RABUuE0EN2qtWBjCwYD8UAgOBwwRcHyQv2+6QcfkAA8C5GFjK6TYQgmoPWHw9hQehwOao5L0LCMdiQKk0en0Z69ADuEE5UAQm3RPz2-T+eOGhLB11JUIpcIRtPpzUZzNZBDYHJgXPYOD5AqF706GLFh2O-3x5xBRPB7nYdwWMMV1OVDN6TJZ+jZWpAAr1Bp1gp4lG4QA
\begin{tikzcd}
  &  &    & A \\
Z \arrow[rrru, "f_A", bend left] \arrow[rrr, "f_B"', bend right] \arrow[rrrd, "f_C"', bend right] \arrow[rr, "σ", dotted] &  & A×B×C \arrow[ru, "π_A", two heads, dashed] \arrow[r, "π_B", two heads, dashed] \arrow[rd, "π_C"', two heads, dashed] & B \\
  &  &    & C
\end{tikzcd}
```

#### 1.5.9.2. Prove that both `(A × B) × C` and `A × (B × C)` satisfy this universal property.

for `(A × B) × C`:
```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZAZgBoAGAXVJADcBDAGwFcYkQBBEAX1PU1z5CKcqQCM1Ok1bsAWjz4gM2PASIAmcZIYs2iTgHWAQgv4qhRMuu3S9IE7zOC1KMsRu72HY6aUDVwsiiACweMvryjn7mLsiaoTQ64SAAFN5GAJQGAMK+ys6BZACsYXa53JIwUADm8ESgAGYAThAAtkhiNDgQSKJSnvoNAPpcNIz0AEYwjAAK-hb6jDANOCA0U2BQSMTkUc1tHV09iGT9ycMmY5PTczHCIE1Y1QAWq+swm0gAtDt7Le2ITogbpITRnOyAYeAhsB0tw1iBxlNZvMXAjlqs-gdEGCQYg+kk7IAB4BG8MRNxR9yWK18+wBOOOpwJ7GJlwR12Rd3YjxeGMUtKQRSOSGCiVs7GGMOMcKuSNuBXYVLeIA2WxOuz5-wFQsQAHZRQMQMNcjLyZz9NzXvCVd9fhqsYLgccAGz65JQ4BpYxZbLStmyikK9E0zWIF2O4WuonQ2Gk9lygKB6mYgFh3F68HMobGv2m+Xmp6WircIA
\begin{tikzcd}
  &   &    & A   \\
Z \arrow[rrru, "f_A", bend left] \arrow[rrrd, "f_B"', bend right] \arrow[rr, "f_{A×B}", dotted]    &   & A×B \arrow[ru, "π_A", two heads, dashed] \arrow[rd, "π_B"', two heads, dashed]    &     \\
  &   &    & B   \\
  &   &    & A×B \\
Z \arrow[rrru, "f_{A×B}", bend left] \arrow[rrrd, "f_C"', bend right] \arrow[rr, "f_{(A×B)×C}", dotted]    &   & (A×B)×C \arrow[ru, "π_{A×B}", two heads, dashed] \arrow[rd, "π_C" description, two heads, dashed] &     \\
  &   &    & C    
\end{tikzcd}
```
therefore
```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZARgBoAGAXVJADcBDAGwFcYkQBBEAX1PU1z5CKAEwVqdJq3YcA6wCEefEBmx4CRcqWISGLNohAAtJfzVCiZHTT3TDi3mcEaUZEbqkGQAYVMqB6sLIYu42nuwAFHLyAJSyvtwSMFAA5vBEoABmAE4QALZIZCA4EEgAzGH67IADwAD6ijSM9ABGMIwACgEWhowwmTh+OfmFNCVIWpJVhnVcjS1tneYuINlYKQAWA44gQwWIYsWliAAslXY7tb5zrR1dy6sbW8q7SAdjiACsZ16ZtcBRCji3m4IGuCzuwhAWDA2Fgg1yezeRwqk3OvwaICaN0Wzkh0NhbG2L32oyOE1sP1qs0x81uS0hvX68OGJMOI1RlOA0RBYLpuPY+KwcKJCKQXzZJ2+NUuoJp2Ih7EZTyyos+pPZFOlXIUPLl4Pp7Aemx4lG4QA
\begin{tikzcd}
  & A & A×B \arrow[ld, "π_B", two heads, dashed] \arrow[l, "π_A"', two heads, dashed]    &     \\
Z \arrow[rd, "f_C"'] \arrow[rrd, "f_{(A×B)×C}" description, dotted] \arrow[r, "f_B" description] \arrow[ru, "f_A"] \arrow[rru, "f_{A×B}" description, dotted] & B &    &     \\
  & C & (A×B)×C \arrow[l, "π_C", two heads, dashed] \arrow[uu, "π_{A×B}"', two heads, dashed]    &   
\end{tikzcd}
```

for `(A × B) × C`:
```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZAZgBoAGAXVJADcBDAGwFcYkQAhEAX1PU1z5CKcqQCM1Ok1bsAWjz4gM2PASIAmcZIYs2iTgHWAwgv4qhRMuu3S9IE7zOC1KMsRu72AQVNKBq4WRRABYPGX15Rz9zF2RNUJodcJAvAwAKDmMASl9lZ0CyAFYwu0yHSRgoAHN4IlAAMwAnCABbJDEaHAgkUSlPfXqAfS4aRnoAIxhGAAV-C31GGHqcEBpJsCgkYnIoptb2zu7EMj7koZNRianZmOEQRqwqgAsVtZgNpABabd3mtsQOiAukhNKc7ENgGVuKsQGNJjM5i5YUtXrCsGA7FAIDgcJVfHt-qDgYhekk7IAB4GGMLh10Rd0WyxhTxg9E2+hwAHcIMzWQhRujMfQ4MzNr99ogiUcTmT2JSLrCrgjbuwHs9UTy2UCuRq+WiMewoEKRfi-khCockMFErZ2EMfJd4Td8uwGaj1myfooCWaLYgAOzW-ogCFQ6mKp0BFWPF4w91fT0NU2Ic1Ao4ANkDZ0GwFSGWy0IdtOVCxR1IFBuxuNFXqTGdTlszFMG9oVjrpLtLNA17E53JZUF1jHL+kNwrxYv+deJAbBsuzocLSud+lVMa7-Z72v7g+HIFHxu4lG4QA
\begin{tikzcd}
  &  &    & B   \\
Z \arrow[rrru, "f_B", bend left] \arrow[rrrd, "f_C"', bend right] \arrow[rr, "f_{B×C}", dotted]    &  & B×C \arrow[ru, "π_B", two heads, dashed] \arrow[rd, "π_C"', two heads, dashed]    &     \\
  &  &    & C   \\
  &  &    & A   \\
Z \arrow[rrru, "f_A", bend left] \arrow[rrrd, "f_{B×C}"', bend right] \arrow[rr, "f_{A×(B×C)}", dotted] &  & A×(B×C) \arrow[ru, "π_A", two heads, dashed] \arrow[rd, "π_{B×C}"', two heads, dashed] &     \\
  &  &    & B×C
\end{tikzcd}
```
therefore
```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZARgBoAGAXVJADcBDAGwFcYkQBBEAX1PU1z5CKAEwVqdJq3YcA6wAoAQrIDCASh58QGbHgJFypYhIYs2iEAC1N-XUKJljNU9IuKb2gXuElSIk1LmICoeOoL6on4BZuzKIdwSMFAA5vBEoABmAE4QALZIZCA4EEiGkjEWgAPAAPpcNIz0AEYwjAAKXvYWWVjJABY4IPVYYEFQ9HC9SYMgk-RQ7DgA7hCzUAi8mTn5iIXFSACszoHsNcBx3NMNzW0dESDdfQNDI+xjE1M0qwvLq+ta2XkkGIiiVEGUXEEMrVLk0Wu07HdGDAMgMNiAAdtgXsdkcKujqsA5EpVGoLvVYTcEcIQMNsLBLsNRhAcDgpmiMUCaNiACy41z4kLk67w8LUh79DwcxBY0EAZj5kOq7iFcNu1NpWHp7K2nJBBwV7ChhNkijJICuqqp7A19OeTJZbP+OsQhz1iF55X5NUF5opIu87CRKIZLwsb0m80+MDm3xW0bWkudrux8s9QRqyt9wrV7HFT3NjNe4wj0y+FiWcbm60o3CAA
\begin{tikzcd}
  & A & A×(B×C) \arrow[l, "π_A"', two heads, dashed] \arrow[dd, "π_{B×C}"', two heads, dashed] \\
Z \arrow[ru, "f_A"] \arrow[rru, "f_{A×(B×C)}" description, dotted] \arrow[rd, "f_C"'] \arrow[r, "f_B" description] \arrow[rrd, "f_{A×B}" description, dotted] & B &                                                                                        \\
  & C & B×C \arrow[l, "π_C", two heads, dashed] \arrow[lu, "π_B"', two heads, dashed]         
\end{tikzcd}
```

#### 1.5.9.3. Deduce that `(A × B) × C` and `A × (B × C)` are necessarily isomorphic.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZAZgBoAGAXVJADcBDAGwFcYkQBBAdYCEQBfUuky58hFACZSARmp0mrdhwFCQGbHgJEALDLkMWbRCAAU3HgEouAYRXCNYouVIT9CoyABadtSM3jkKVcaA0VjPkF7US1JUmI3Q3ZbSN8HGORdeJD3JS4THhsLH3VogLJtBLCQAuS5GCgAc3giUAAzACcIAFskZxAcCCRdeUTjQAHgQECCAH0+GkZ6ACMYRgAFP0djLDBsWBAaAAsYeih2HAB3CEPjhDmtjyh6OEOTmiWwE8RichSO7t6aAZIaTZUYgSZTZRzRbLNZpcQgLY7NgHI4ffoXK5QG4gRh3dgPJ71Hy-HqIKT9QaIACsIKq4NsUKWq3WMQR2ywu1eMHeSC+KOOpwxqOxuLA90ez2JnVJ5MBiD6oQ84OA5n4exx0OZcPYiI5yJxeOMBMl-LR50uwvVbw+AFovj9pbyAZSaSMqq0pgyNUzYaV2O0sA19jgpX9Ps6kOTFewPcAzLwrNY1YyYSz4YwYK0Q7cxfiIDgcESHWGyBShrSPB7Zt7U9rNuzdsXSaW5cC3ZWIer5j60+wM1nQ82I-KKzGpireMma1q-cYA0HsyBrby+qL7vnCycm06y4gAGyj4yx7j5QpT7u12cgefBruGkBQDdF1QkndygDsh5AsZq581vv8PtM0XZdEDtVd70fAtnzaR192HT923YMZACCCcdfy7f9e3rJF1UxQULWuO9cyNCUiS5HlPm+F84IPXc22jcY0MhacAI2NlcIo20+RAfDjHNTERUgsitxosNELlYZGLBNDqwvGdAJwvU8NRAjBOI8VCReJduW46jYPE4dXXktjWV1TleNU-ihSInNNJNJCmM9ARKH4IA
\begin{tikzcd}
  &  &   & A×B \arrow[ldd, "π₁_B" description, two heads, dashed, bend left] \arrow[ld, "π₁_A" description, two heads, dashed]  &                                                                                                                                          \\
  &  & A &    & (A×B)×C \arrow[lldd, "π₁_C" description, two heads, dashed, bend left] \arrow[lu, "π₁_{A×B}" description, two heads, dashed, bend right] \\
Z \arrow[rrd, "f_C"'] \arrow[rrrru, "f_{(A×B)×C}", dotted] \arrow[rr, "f_B" description] \arrow[rru, "f_A"] \arrow[rrruu, "f_{A×B}"', dotted, bend left] \arrow[rrrrd, "f_{A×(B×C)}"', dotted] \arrow[rrrdd, "f_{B×C}", dotted, bend right] &  & B &    &                                                                                                                                          \\
  & C &    & A×(B×C) \arrow[ld, "π₂_{B×C}" description, two heads, dashed, bend left] \arrow[lluu, "π₂_A" description, two heads, dashed, bend right] \\
  &   & B×C \arrow[luu, "π₂_B" description, two heads, dashed, bend right] \arrow[lu, "π₂_C" description, two heads, dashed] &                                                                                                                                         
\end{tikzcd}
```



### 1.5.10. Push the envelope a little further still, and define products and coproducts for families (i.e. indexed sets) of objects of a category.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBoBGAXVJADcBDAGwFcYkQAtEAX1PU1z5CKAEwVqdJq3YAdGWgBO0APrAsAXnLcAemvVhuAAgCCgI1wefEBmx4CRAMyliEhizaIQxwIEEF-jaEO4jSu0h7GgEEEvlYCtsLIjiIuUu6egMEEUdaCdqKk9klu7MbKhLx+WXGOecHJhcpYPBIwUADm8ESgAGZKALZIZCA4EEjkNIxYYClQEDg4TVFdEL2IIwNDiGIgYxPsUPRwABZzNIf0UOw4AO4QJ1AI1QUegAPAyuQgo-QARjCMAAoxAR5xthYPMesMaIMkI5JA8QM8RG8QDdzlcbndNuNJntDmd3l9fv9siAgVgQaUQAslitIYgACz3UJw5T2RHIjyXa4wU7orZYg5HTafb5-fxEklkyyU8GrJAAVgZKWehDxwsJwmJYGBbGOXLO7NRup5mJ22Lm5KliH6NI2XzAevs-RCKQ6L1Biz6ELW0Nt9sdNQ8LoR5rBls9SHpIB9HphjJdLOD7tDMsQ8sjMDtSAAtA6FewXSVJSHqWsAGy5p51RGMIUE0Xq8XapG6lGc7lV40eXb8s4JpZW0vlimV7iUbhAA
\begin{tikzcd}
  &  &  & A₁  \\
Z \arrow[rr, dotted] \arrow[rrru, "f_1", bend left] \arrow[rrr, "f_2", bend left] \arrow[rrrd, "f_3"] \arrow[rrdd, "f_n", bend right] \arrow[rrrdd, "f_i"] &  & \prod_{i=1}^{i=n} Aᵢ \arrow[ru, "π_1" description, two heads, dashed] \arrow[r, "π_2" description, two heads, dashed] \arrow[rd, "π_3" description, two heads, dashed] \arrow[dd, "π_n" description, two heads, dashed] \arrow[rdd, "π_i" description, two heads, dashed] & A₂  \\
  &  &  & A₃  \\
  &  & A_n  & A_i
\end{tikzcd}
```

#### 1.5.10.1. Do these exist in `Set`? It is common to denote the product `A × ··· × A` (n times) by `Aⁿ`.

Any such finite families exist in `Set`, though whether infinite families exist is dependent on the "axiom of choice".



### 1.5.11. Let `A`, resp. `B` be sets, endowed with equivalence relations `∼_A` , resp. `∼_B`.

#### 1.5.11.1. Define a relation `∼` on `A × B` by setting `(a₁, b₁) ∼ (a₂, b₂) ⇔ a₁ ∼_A a₂ ∧ b₁ ∼_B b₂`. (This is immediately seen to be an equivalence relation.)

```py
∷ ∀(A,B in Set)
∷ ∀(~_A ⊆ A), ~_A is equivalence relation
∷ ∀(~_B ⊆ B), ~_B is equivalence relation
∷ ∀(~ ⊆ A × B), (a₁, b₁) ∼ (a₂, b₂) ⇔ (a₁ ∼A a₂) ∧ (b₁ ∼B b₂)

```

#### 1.5.11.2. Use the universal property for quotients (§5.3) to establish that there are functions `(A × B)/∼ → A/∼_A`, `(A × B)/∼ → B/∼_B`.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZARgBoAGAXVJADcBDAGwFcYkQBBAAgB0e8AtvC4AhEAF9S6TLnyEUAJlLFqdJq3YcJUkBmx4CRJQtUMWbRJwD0fbAID6WydP1yi5ZafUWQY57pkDeRJPGjMNSwAKbj5BYREAShseO20XWUMUDxMw73YRZLt7Px09DOCyAGYvc3YALQlVGCgAc3giUAAzACcIASQPEBwIJDI1Wss0RxAaRnoAIxhGAAVAt0ssMGxYNJAevoGaYaRK3IndYpmQOcWVtcyQTe22f33+xEHjxAAWM4iQPhoLBXG5LVauB5PLA7V69d6fEaIABsfx8nRBCzB93kjy20LYNEWYCgSAAtJVyLCDogxl8lON-oCsNNZpi7hCcVCYTo3qMjoiUQy0SzrmzweV2FyXjy4Uh6V9BeEfHwILQYN1GJsYMBOo5xBjbuKgpK8dyurLEKchoiAKyo9hMy6sw3Yk3PXa8y38pCKvKWXViZ1Yjlu-FXIkkj5U96-a0++2WFVqjVanX6oPsiUbU3S83Uu1x5EJgE8VXqzVgbUB9Oil0h7Pu8SUcRAA
\begin{tikzcd}
 & A \times B \arrow[rd, "p_A" description] \arrow[ld, "p_B" description] \arrow[d, "\pi" description] \arrow[ddd, "f" description, bend right] & \\
B \arrow[d, "\pi_B" description] \arrow[rdd, "f_B" description] & (A \times B)/\sim \arrow[dd, "\overline{f}" description]  & A \arrow[d, "\pi_A" description] \arrow[ldd, "f_A" description] \\
B/\sim_B \arrow[rd, "\overline{f_B}" description] & & A/\sim_A \arrow[ld, "\overline{f_A}" description] \\
 & Z & 
\end{tikzcd}
```

#### 1.5.11.3. prove that `(A × B)/∼`, with these two functions, satisfies the universal property for the product of `A/∼_A` and `B/∼_B`.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZABgBpiBdUkANwEMAbAVxiRAEEQBfU9TXfIRQBGclVqMWbdgAIAOnLwBbeDIBC3XiAzY8BIgCYx1es1aIQGnn12CiZYeNNSL7APQLsSzTYH6RpI4mkuYgABSyCsqqagCUHnJePtr8ekLIRkESZmxqCUlc4jBQAObwRKAAZgBOEN6IZCA4EEgAzME5FgpoWAD6nNQMdABGMAwACql2Flhg2LDJNXVIok0tDR0u2v0ggyNjk7b+ILPzrNYgS-WrzUhG2VtovRp7oxNTx6dYCxdXK9S3RAAFk2oW6WF2ICGb0OfiEJzm33OWj+iBu63aDzBcnGfQGUP27yO8K+PxRtWuAPWAFZQWwFLjnpDoQcPiTEWSqhS7lSkLSsfS5D0ma9WcS2KTkVzlsDeYhMc5sRAaDBqgxZjBgAy8VxmYTYWk2AwYJUcItubK1ny6V05MrVeqwJrtc9daKiXC2NUsCUABZmwpcIA
\begin{tikzcd}
A \arrow[d, "\pi_A" description] & A \times B \arrow[l, "p_A" description] \arrow[r, "p_B" description] \arrow[d, "\pi" description] \arrow[ld, "\Pi_A" description] \arrow[rd, "\Pi_B" description] & B \arrow[d, "\pi_B" description] \\
A/\sim & (A \times B)/\sim \arrow[l, "\overline{\Pi_A}"] \arrow[r, "\overline{\Pi_B}"'] & B/\sim 
\end{tikzcd}
```

#### 1.5.11.4. conclude (without further work) that `(A × B)/∼ ≅ (A/∼_A) × (B/∼_B)`.

```latex
% https://tikzcd.yichuanshen.de/#N4Igdg9gJgpgziAXAbVABwnAlgFyxMJZARgBoAGAXVJADcBDAGwFcYkQAtEAX1PU1z5CKcqWLU6TVuwCCPPiAzY8BImXE0GLNohAyABAB1DeALbx9AIXn9lQogCYxErdN3XetwapGkHLqR09AHpjbFMAfTlPRQEVYRI-AO12AAoDYzMLSwBKUMNwm1i7H2Qnf01A9kt88IiPCRgoAHN4IlAAMwAnCFMkURAcCCQySRTdAAsokBpGegAjGEYABTj7XSwwbFgi7t7+miGkAGZK8ZAp61mFpdWS4RBN7bYYvb7EAaPEJzG3EFSpjJSJccjMQHNFis1j5HlssDtXj13p9hogACxnP7NabXSF3bwPJ7wtg0RZgKBIAC0aIAnDQ4BMsB0cOxjrskQdBqiAGyYoLYq7gm5Q+7sIk7UkwclIWn0xnMqnHRH7RCjL4Y35BYxoLA4oV46GEuEIhRvJA-L6jVxBNB6iG3Q1i40vU0c76HVGnTXsW2C+0iglO57slUW1EAVj57G1WDB-vx8SDxJD7zDMqjumMy11clxDtFG2dKfNHqQvO9mcM2fqceFCfWsODyveXq+5et0cMOpreYDicLTddKsjXPTFZAxggtBgXUYmxgwCzOe4tYNBfBMAVzaQI7bGYnhinM7nYAXS-qK979ZhXSwzQmLO4lG4QA
\begin{tikzcd}
 & Z \arrow[ld, "h_A" description] \arrow[rd, "h_B" description] \arrow[d, "{(h_A,h_B)}" description] \arrow[ldd, "g_A" description, bend right=49, shift right=3] \arrow[rdd, "g_B" description, bend left=49, shift left=3] & \\
A \arrow[d, "\pi_A" description] & A \times B \arrow[l, "p_A" description] \arrow[r, "p_B" description] \arrow[d, "\pi" description] \arrow[ld, "\Pi_A" description] \arrow[rd, "\Pi_B" description] & B \arrow[d, "\pi_B" description] \\
A/\sim_A & (A \times B)/\sim \arrow[l, "\overline{\Pi_A}"] \arrow[r, "\overline{\Pi_B}"'] & B/\sim_B 
\end{tikzcd}
```



### 1.5.12. Define notions of fibered products and coproducts, as terminal objects of the categories `𝓒_{α,β}`, `𝓒^{α,β}` considered in Example 3.10 (cf. also Exercise 3.11), by stating carefully the corresponding universal properties. As it happens, `Set` has both fibered products and coproducts. Define these objects ‘concretely’, in terms of naive set theory. [II.3.9, III.6.10, III.6.11]

#### 1.5.12.1. Define fibered products

```latex
\begin{tikzcd}
  &    & A \arrow[rd, "α"]  &   \\
  & Z \arrow[rd, "g"'] \arrow[ru, "f"]    &    & C \\
  &    & B \arrow[ru, "β"'] &
```
```latex
  &    & A \arrow[rd, "α"]  &   \\
Z \arrow[rru, "f", bend left] \arrow[r] \arrow[rrd, "g"', bend right] & P \arrow[ru, "p_A"] \arrow[rd, "p_B"'] &    & C \\
  &    & B \arrow[ru, "β"'] &  
\end{tikzcd}
```

#### 1.5.12.2. Define fibered coproducts

```latex
\begin{tikzcd}
  & A \arrow[rd, "f"]    &    &   \\
C \arrow[ru, "α"] \arrow[rd, "β"'] &    & Z    &   \\
  & B \arrow[ru, "g"']    &    &
```
```latex
  & A \arrow[rrd, "f", bend left] \arrow[rd, "p_A"]   &    &   \\
C \arrow[ru, "α"] \arrow[rd, "β"'] &    & P \arrow[r] & Z \\
  & B \arrow[ru, "p_B"'] \arrow[rru, "g", bend right] &    &  
\end{tikzcd}
```

#### 1.5.12.3. Define fibered products concretely as naive set theory

```py
P = A ×_{α,C,β} B = A ×_{C} B = { (a, b) ∈ A×B | α(a) = β(b) }

Concretely, this can also be expressed as:
  P = ⋃_{ c ∈ α(A) ∩ β(B) } α⁻¹[{c}] × β⁻¹[{c}]

This is the set of all pairs of inputs (a, b) such that α(a) = β(b)
Let us show this is the case with a simple example.
Let
  A = {1, 2, 3}
  B = {w, x, y, z}
  C = {l, m, n, p}
We define
  α : A → C = {(1, m), (2, m), (3, n)}
  β : B → C = {(w, l), (x, m), (y, n), (z, n)}
We have
  α(A) = {m, n}
  β(B) = {l, m, n}
  ∴ α(A) ∩ β(B) = {m, n}
The fibered coproduct is then:
  P = (α⁻¹[{m}] × β⁻¹[{m}]) ∪ (α⁻¹[{n}] × β⁻¹[{n}])
    = {(1, x), (2, x)} ∪ {(3, y), (3, z)}
    = {(1, x), (2, x), (3, y), (3, z)}
```

#### 1.5.12.4. Define fibered coproducts concretely as naive set theory

```py
Let
  A = {1, 2, 3}
  B = {w, x, y, z}
  C = {l, m, n}
We define
  α : C → A = {(l, 1), (m, 1), (n, 2)}
  β : C → B = {(l, x), (m, y), (n, z)}
We have:
  • α⁻¹({1}) = {l, m} and β⁻¹({x}) = {l}, so (1 ∼ x);
  • α⁻¹({1}) = {l, m} and β⁻¹({y}) = {m}, so (1 ∼ y), and by closure, (1 ∼ x ∼ y);
  • α⁻¹({2}) =  {n}   and β⁻¹({z}) = {n}, so (2 ∼ z);
  • α⁻¹({3}) =   ∅    and β⁻¹({w}) =  ∅ , so one might think that (3 ∼ w),
    however, since there is no c ∈ C such that α(c) = 3 and β(c) = w, we have 3 ≁ w;
This information corresponds to the following partition of (A ⊔ B):
  {{1, x, y}, {2, z}, {3}, {w}}.
The fibered coproduct is then:
  P = (A ⊔ B)/ ∼
    = {1, 2, 3, w, x, y, z}/ ∼
    = {{1, x, y}, {2, z}, {3}, {w}}
    = {[1], [2], [3], [w]}
```



---

# 2. Groups

---

## 2.1. Definition of a group

```py
† G in Set
† hom_G(∗,∗) = aut_G(∗) # is a groupoid, so  are isomorphisms
† |G| > 0 # is non-empty
† · ∈ (G × G) → G # has an automorphic binary operation
† ∀(a,b ∈ G) : ·(a,b) =: a · b # allow infix notation for this operation
† ∀(a ∈ G) ∃!(e ∈ G) : a · e = a = e · a # the operation is unital
† ∀(a ∈ G) ∃(a⁻¹ ∈ G) : a · a⁻¹ = e = a⁻¹ · a # the operation is inversible
† ∀(a,b,c ∈ G) : (a · b) · c = a · (b · c) # the operation is associative
∴ G in Grp # G is a group
```

```py
⊦ e is unique
⊦ ∀(h ∈ G): (a · h = a = h · a) ⇒ h = e
† ∀(h ∈ G): (a · h = a = h · a)
∵ ∀(a ∈ G) ∃!(e ∈ G) : a · e = a = e · a
∴ h = e · h = e
∴ h = e
```

```py
⊦ a⁻¹ is unique
⊦ ∀(h₁,h₂ ∈ G): (a · h₁ = e = h₁ · a) ∧ (a · h₂ = e = h₂ · a) ⇒ h₁ = h₂
† ∀(h₁ ∈ G): (a · h₁ = e = h₁ · a)
† ∀(h₂ ∈ G): (a · h₂ = e = h₂ · a)
∵ ∀(a ∈ G) ∃!(e ∈ G) : a · e = a = e · a
∵ ∀(a ∈ G) ∃(a⁻¹ ∈ G) : a · a⁻¹ = e = a⁻¹ · a
∴ h₁ = h₁ · e = e = e · h₂ = h₂
∴ h₁ = h₂
```

```py
⊦ · is cancellative
⊦ ∀(a,g,h ∈ G): (g·a = h·a ⇒ g = h) ∧ (a·g = a·h ⇒ g = h)
∷ g·a = h·a
  ⇒ (g·a)·a⁻¹ = (h·a)·a⁻¹
  ⇒ g·(a·a⁻¹) = h·(a·a⁻¹)
  ⇒ g·e = h·e
  ⇒ g = h
∷ a·g = a·h
  ⇒ a⁻¹·(a·g) = a⁻¹·(a·h)
  ⇒ (a⁻¹·a)·g = (a⁻¹·a)·h
  ⇒ e·g = e·h
  ⇒ g = h
```

```py
b∣a ≡ ∀(a,b ∈ S) ∃(k ∈ ℤ): a = k·b # divisor/multiple
∀(g ∈ G) ∀(n ∈ ℕ): (gⁿ = e) ⇒ (|g| ∣ n) ⇒ (|g| ≤ n) # lemma of order-divisor
∀(g ∈ G) ∀(n ∈ ℕ): (gⁿ = e) ⇒ ∀(z ∈ ℤ): (gᶻ = e) ⇔ (|g| ∣ z) # corollary of order-divisor
∀(g ∈ G) ∀(n ∈ ℕ): (gⁿ = e) ⇒ ∀(m ∈ ℕ): |gᵐ| = lcm(m,|g|) / m = |g| / gcd(m,|g|)
∀(g,h ∈ G): g·h = h·g ⇒ |g·h| ∣ lcm(|g|,|h|)
```



### 2.1.0. Lexicon

- [*group*](https://en.wikipedia.org/wiki/Group_(mathematics)): A set with a binary operation, which satisfies the axioms of closure, associativity, existence of identity, and existence of inverses.
```py
† G in obj(Set)
† · ∈ (G×G → G)
† ∀(a,b,c ∈ G):
- closed: a · b = c
- unital: ∃!(e ∈ G), a · e = a = e · a
- inversible: ∃(a⁻¹ ∈ G), a · a⁻¹ = e = a⁻¹ · a
- associative: (a · b) · c = a · (b · c)
```
- [*trivial group*](https://en.wikipedia.org/wiki/Trivial_group): A group with a single element.
```py
† G in obj(Set), G = {e}
† · ∈ (G×G → G), e · e = e
```
- [*abelian group*|*commutative group*](https://en.wikipedia.org/wiki/Abelian_group): A group with its binary operation being commutative.
```py
† G in obj(Set), G is group
† · ∈ (G×G → G)
† ∀(a,b ∈ G):
- commutative: a · b = b · a
```
- [*finite group*](https://en.wikipedia.org/wiki/Finite_group): A group whose underlying set has a finite amount of elements.
```py
† G in obj(Set), G is group
† ∃(n ∈ ℕ), |G| = n
```
- [*order*](https://en.wikipedia.org/wiki/Order_(group_theory)): The order of a group is the amount of elements of a group. The order of an element is the smallest amount of operations which can be composed in succession to obtain the neutral element.
```py
† G in obj(Set), G is group
† · ∈ (G×G → G)
† ∀(a ∈ G), ∃(m ∈ ℕ), aᵐ = e
† |a| = m
```



### 2.1.1. Write a careful proof that every group is the group of isomorphisms of a groupoid. In particular, every group is the group of automorphisms of some object in some category. [§2.1]

```py
† groupoid is a category with only isomorphisms
† group is a groupoid with only one object
† G in obj(Set)
† · ∈ (G×G → G), is associative, is unital, is inversible
∴ (G,·) is a group
⊦ ∃(𝓒 is groupoid)
  ∷ ∃(X in obj(𝓒)), ∀(e ∈ X), e ∈ G
  ∷ ∀(g ∈ X), ∃!(f_g ∈ hom(X,X)), ∀(x ∈ X), f_g(x) = (x ↦ g·x)
  ∷ f_a ∘ f_b = (x ↦ a·(b·x)) = (x ↦ (a·b)·x) = f_{a·b}
  ⊦ is unital
    ∷ ∃(id_x ∈ hom(X,X)) = (x → e·x), ∀(f ∈ hom(X,X)), f ∘ id_x = f = id_x ∘ f
  ⊦ is inversible
    ∷ ∃(f_g⁻¹ in hom(X,X)) = (x ↦ g⁻¹ · x)
    ∴ f_g ∘ f_g⁻¹ = f_g⁻¹ ∘ f_g = f_{g·g⁻¹} = f_{g⁻¹·g} = (x ↦ x = id_x)
  ⊦ is associative
    ∷ ∀(f_a,f_b,f_c in hom(X,X)), ∀(a,b,c ∈ X)
    ∴ (f_a∘f_b)∘f_c = (x → ((a·b)·c)x) = (x → (a·(b·c))x) = f_a∘(f_b∘f_c)
  ∵ is compositive, unital, associative
  ∴ is groupoid
  ∵ is inversible
  ∴ hom(X,X) is isomorphic to (G,·)
```



### 2.1.2. Consider the ‘sets of numbers’ listed in §1.1, and decide which are made into groups by conventional operations such as `+` and `·`. Even if the answer is negative (for example,  `(ℝ,·)` is not a group), see if variations on the definition of these sets lead to groups (for example, `(ℝ∗,·)` is a group, cf. §1.4). [§1.2]

Here is a table: https://docs.google.com/spreadsheets/d/1CkF-GO4zUE808sgVWRlHTpSWC1YsnvGD-DKBEGs3E7Y/edit?usp=sharing

| structure    |(ℕ,+)|(ℤ,+)|(ℚ,+)|(ℝ,+)|(ℂ,+)|(ℕ,·)|(ℤ,·)|(ℚ,·)|(ℝ,·)|(ℂ,·)|(ℕ*,·)|(ℤ*,·)|(ℚ*,·)|(ℝ*,·)|(ℂ*,·)|({+1,−1},·)|
|:------------:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:----:|:----:|:----:|:----:|:----:|:---------:|
| group        |  Y  |  Y  |  Y  |  Y  |  Y  |  N  |  N  |  N  |  N  |  N  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| total        |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| unital       |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| associative  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| cancellative |  Y  |  Y  |  Y  |  Y  |  Y  |  N  |  N  |  N  |  N  |  N  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| commutative  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y   |  Y   |  Y   |  Y   |  Y   |     Y     |
| inversible   |  N  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  Y  |  N   |  N   |  Y   |  Y   |  Y   |     Y     |



### 2.1.3. Prove that `(gh)⁻¹ = h⁻¹ g⁻¹` for all elements `g`, `h` of a group `G`.

```py
⊦ ∀(g,h ∈ G), (g·h) = (h⁻¹·g⁻¹)

∷ (g·h)·(h⁻¹·g⁻¹)
= g·(h·h⁻¹)·g⁻¹
= g·e·g⁻¹
= g·g⁻¹
= e

∷ (h⁻¹·g⁻¹)·(g·h)
= h⁻¹·(g⁻¹·g)·h
= h⁻¹·e·h
= h⁻¹·h
= e

∴ (h⁻¹·g⁻¹) is inverse for (g·h)
∵ inverse in a group is unique
∴ (g·h)⁻¹ = (h⁻¹·g⁻¹)
```



### 2.1.4. Suppose that `g² = e` for all elements `g` of a group `G`; prove that `G` is commutative.

```py
† ∀(g ∈ G), g² = e
∴ ∀(g ∈ G), g = g⁻¹ # each element is its own inverse
∴ (g² = e) ⇒ (g = g⁻¹)
∷ ∀(a,b ∈ G), b·a = (b·a)⁻¹ = a⁻¹·b⁻¹ = a·b
∴ b·a = a·b # G is commutative
```



### 2.1.5. Prove that every row and every column of the multiplication table of a group contains all elements of the group exactly once (like Sudoku diagrams!).

The ‘multiplication table’ of a group is an array compiling the results of all multiplications `g · h`:

|**·**|**e**|**⋯**|**h**|**⋯**|
|:---:|:---:|:---:|:---:|:---:|
|**e**| *e* |  ⋯  | *h* |  ⋯  |
|**⋯**|  ⋯  |  ⋯  |  ⋯  |  ⋯  |
|**g**| *g* |  ⋯  |*g·h*|  ⋯  |
|**⋯**|  ⋯  |  ⋯  |  ⋯  |  ⋯  |

(Here `e` is the identity element. Of course the table depends on the order in which the elements are listed in the top row and leftmost column.)



### 2.1.6. Prove that there is only one possible multiplication table for `G` if `G` has exactly 1, 2, or 3 elements. Analyze the possible multiplication tables for groups with exactly 4 elements, and show that there are two distinct tables, up to re-ordering the elements of G. Use these tables to prove that all groups with ≤ 4 elements are commutative. (You are welcome to analyze groups with 5 elements using the same technique, but you will soon know enough about groups to be able to avoid such brute-force approaches.) [2.19]

#### 2.1.6.1. 1-element groups

| · | e |
|---|---|
| e | e |

#### 2.1.6.2. 2-element groups

| · | e | a |
|---|---|---|
| e | e | a |
| a | a | e |

#### 2.1.6.3. 3-element groups

| · | e | a | b |
|---|---|---|---|
| e | e | a | b |
| a | a | e | ? |
| b | b | ? | e |

| · | e | a |a⁻¹|
|---|---|---|---|
| e | e | a |a⁻¹|
| a | a |a⁻¹| e |
|a⁻¹|a⁻¹| e | a |

#### 2.1.6.4. 4-element groups

| · | e | a | b | c |
|---|---|---|---|---|
| e | e | a | b | c |
| a | a | e | c | b |
| b | b | c | e | a |
| c | c | b | a | e |

| · | e | a | b | c |
|---|---|---|---|---|
| e | e | a | b | c |
| a | a | e | c | b |
| b | b | c | a | e |
| c | c | b | e | a |



### 2.1.7. Prove Corollary 1.11.

```py
† g ∈ G, ∃(n ∈ ℕ), g^n = e
† N ∈ ℤ
⊦ gᴺ = e ⇔ ∃(k ∈ ℕ) |g| | N
  ∵ lemma 1.10
  ∴ gⁿ = e ⇒ ∃(k ∈ ℕ), n = k·|g| # n is multiple of |g|
  † g^|g| = e
  ∴ g^n = g^|g|k = (g^|g|)^k = e^k = e
  ∴ g^n = e
```



### 2.1.8. Let `G` be a finite group, with exactly one element `f` of order `2`. Prove that `∏_{g∈G} g = f`. [4.16]

```py
† G in Grp = { f }
† f ∈ G, f^2 = e
⊦ ∏_{g∈G} g = f
  ∷ ∏_{g∈G}^2 = (∏_{g∈G} g)·(∏_{g∈G} g⁻¹) = e
  ∴ ∏_{g∈G} g = f
```



### 2.1.9. Let `G` be a finite group, of order `n`, and let `m` be the number of elements `g ∈ G` of order exactly `2`. Prove that `n − m` is odd. Deduce that if `n` is even then `G` necessarily contains elements of order `2`.

```py

```



### 2.1.10. Suppose the order of `g` is odd. What can you say about the order of `g²` ?

```py
† |g| = 2k+1
∴ g^|g| = e ⇒ (g^2)^|g| = g^(2·|g|) = (g^|g|)^2 = e^2 = e
∵ Corollary 1.11
∴ (g^2)^|g| = (g^2)^(2k+1) = e ⇔ ∃(l ∈ ℕ), |g| = 2k+1 = l|g^2|
∴ |g| is odd ⇒ (l is odd) and (|g^2| is odd)
```



### 2.1.11. Prove that for all `g`, `h` in a group `G`, ` |gh| = |hg| `. (Hint: prove that `|aga⁻¹| = |g|` for all `a`, `g` in `G`.)

```py
⊦ |g·h| = |h·g|
  ⊦ |a·g·a⁻¹| = |g|
    ⊦ (a·g·a⁻¹)^|g| = e
      ∷ (a·g·a⁻¹)^|g|
      = (a·g·a⁻¹)·(a·g·a⁻¹)·…·(a·g·a⁻¹)
      = a·g·(a⁻¹·a)·g·(a⁻¹·a)·…·g·a⁻¹
      = a·g·g·…·g·a⁻¹
      = a·g^|g|·a⁻¹
      = a·e·a⁻¹
      = a·a⁻¹
      = e
      ∴ (a·g·a⁻¹)^|g|
    ∴ (a·g·a⁻¹)^|a·g·a⁻¹| = e
    ⇒ (a·g·a⁻¹)^|a·g·a⁻¹| = a·g^|a·g·a⁻¹|·a⁻¹
    ⇒ a·g^|a·g·a⁻¹|·a⁻¹ = e
    ⇒ a⁻¹·a·g^|a·g·a⁻¹|·a⁻¹·a = e
    ⇒ g^|a·g·a⁻¹| = e
    ∵ Lemma 1.10
    ∴ |g| is a divisor of |a·g·a⁻¹|
  ∴ |a·g·a⁻¹| = |g|
```



### 2.1.12. In the group of invertible 2×2 matrices, consider the matrices below. Verify that `|g| = 4`, `|h| = 3`, and `|gh| = ∞`. [§1.6]

```
    g = ⎡ 0 −1 ⎤ → ⎡ ⎤
        ⎣+1  0 ⎦   ⎣ ⎦
```
```
    h = ⎡ 0 +1 ⎤ → ⎡ ⎤
        ⎣−1 −1 ⎦   ⎣ ⎦
```


### 2.1.13. Give an example showing that `|gh|` is not necessarily equal to `lcm(|g|, |h|)`, even if `g` and `h` commute. [§1.6, 1.14]

```py
# basic example:
given the previous exercise:
† |g| = 4
† |h| = 3
† |gh| = ∞
∴ lcm(|g|,|h|) = lcm(4,3) = 12 ≠ ∞
# commuting example: finite field modulo 6
?
```



### 2.1.14. As a counterpoint to Exercise 1.13, prove that if g and h commute, and `gcd(|g|, |h|) = 1`, then `|gh| = |g| |h|`. (Hint: let `N = |gh|`; then `gᴺ = (h⁻¹)ᴺ` . What can you say about this element?) [§1.6, 1.15, §IV.2.5]

```py
∷ let (N ∈ ℕ) = |gh|
∷ ∀(x ∈ G), xᴺ = e ⇔ e = (x⁻¹)ᴺ
∴ |x| = |x⁻¹|
∵ gcd(|g|,|h|) = 1
∴ |g|·|h| = lcm(|g|,|h|) · gcd(|g|,|h|)
∴ |g|·|h| = lcm(|g|,|h|) · 1
∴ |g|·|h| = lcm(|g|,|h|)

∷ N = |gh|
∵ (g·h)ᴺ = e
∵ g·h = h·g # g and h commute
∴ (g·h)ᴺ·(h⁻¹)ᴺ = gᴺ·hᴺ·(h⁻¹)ᴺ # multiply on both sides by (h⁻¹)ᴺ
  = gᴺ·(h·h⁻¹)ᴺ
  = gᴺ
  = e·(h⁻¹)ᴺ
  = (h⁻¹)ᴺ
∴ gᴺ = (h⁻¹)ᴺ = f

∷ f^|g| = (gᴺ)^|g| = g^(N·|g|) = e
∷ f^|h| = ((h⁻¹)ᴺ)^|h| = ((h⁻¹)^|h|)ᴺ = (h⁻¹)^|h| = h^|h| = e
∷ let (M ∈ ℕ) = |gᴺ| = |(h⁻¹)ᴺ|
∴ ∃(k ∈ ℕ), |g| = k·M # M divides |g|
∴ ∃(k ∈ ℕ), |h| = k·M # M divides |h|
∵ |g| and |h| is coprime
∴ M = 1
∴ f = gᴺ = e
∷ let (G ∈ ℕ) = |g|
∷ let (H ∈ ℕ) = |h| = |h⁻¹|
∴ ∃(k ∈ ℕ), N = k·H # N is multiple of H
∵ |g| and |h| is coprime
∴ |g·h| is multiple of |g|·|h|
∵ g·h = h·g ⇒ |g·h| divides lcm(|g|,|h|)
∴ N = |g·h| = |g|·|h|
```


### 2.1.15. Let `G` be a commutative group, and let `g ∈ G` be an element of maximal finite order: that is, such that if `h ∈ G` has finite order then `|h| ≤ |g|`. Prove that in fact if `h` has finite order in `G` then `|h|` divides `|g|`. (Hint: argue by contradiction. If `|h|` is finite but does not divide `|g|`, then there is a prime integer `p` such that `|g| = pᵐr`, `|h| = pⁿs`, with `r` and `s` relatively prime to `p`, and `m < n`. Use Exercise 1.14 to compute the order of `gᵖ^ᵐ hˢ`.) [§2.1, 4.11, IV.6.15]

```py
† G is commutative group
∷ (g ∈ G), (h ∈ G), |h| ≤ |g|
⊦ (|h| ∈ ℕ) ⇒ ∃(k ∈ ℕ), k·|h| = |g| # if h has finite order, |h| divides |g|
  ∷ (|h| ∈ ℕ) ∧ ∄(k ∈ ℕ), k·|h| = |g|
  ⇒ ∃(p ∈ ℕₚ), ∀(m,n ∈ ℕ, m < n),
    (r ∈ ℕ, gcd(r,p) = 1), # r is relatively prime to p
    (s ∈ ℕ, gcd(s,p) = 1), # s is relatively prime to p
    |g| = pᵐr ∧ |h| = pⁿs
  ?
```



---

## 2.2. Examples of groups

### 2.2.0. Lexicon

- [*symmetric group*|*group of permutations*](https://en.wikipedia.org/wiki/Symmetric_group): The group whose elements are all the bijections from the set to itself, using composition of functions.
```py
† ∀(A in obj(Set)), S_A = Aut_{Set}(A)
† ∀(n ∈ ℕ), S_n = {1,…,n}
∷ |S_n| = n!
```
- [*dihedral group*](https://en.wikipedia.org/wiki/Dihedral_group): The group of symmetries of a regular polygon, including rotations and reflections.
```py
† ∀(n ∈ ℕ), D_2n = 
# With rotations as `r` and reflections as `s`
- rᵢ · rⱼ = rᵢ₊ⱼ
- rᵢ · sⱼ = sᵢ₊ⱼ
- sᵢ · rⱼ = sᵢ₋ⱼ
- sᵢ · sⱼ = rᵢ₋ⱼ
```
- [*cyclic group*](https://en.wikipedia.org/wiki/Cyclic_group): The group made up of all elements generated by repeatedly applying the group operation on its *generator element* g.
```py
† ∀(g ∈ G), ⟨g⟩ = {gᵏ | k ∈ ℤ}, G = ⟨g⟩
# finite cyclic group:
† G = { e, g, g², …, gⁿ⁻¹ }
† (i ≡ j mod n) ⇒ (gⁱ = gʲ)
∴ gⁿ = g⁰ = e
∴ g⁻¹ = gⁿ⁻¹
```
- [*group homomorphisms*](): 
- [*presentation*](): 
- [*generator elements*](): 
- [*additive group*](): 
- [*act faithfully*](): 



### 2.2.1. One can associate an `n × n` matrix `M_σ` with a permutation `σ ∈ Sₙ`, by letting the entry at `(i, σ(i))` be `1`, and letting all other entries be `0`.
For example, the matrix corresponding to the permutation
```
σ = ⎛ 1 2 3 ⎞ ∈ S₃
    ⎝ 3 2 1 ⎠
```
would be
```
      ⎛ 0 0 1 ⎞
M_σ = ⎜ 0 1 0 ⎟
      ⎝ 1 0 0 ⎠
```
Prove that, with this notation,
```
M_στ = M_σ · M_τ
```
for all `σ,τ ∈ Sₙ`, where the product on the right is the ordinary product of matrices.

```py
???? kronecker deltas ??
```



### 2.2.2. Prove that if `d ≤ n`, then `Sₙ` contains elements of order `d`. [§2.1]

```py

```



### 2.2.3. For every positive integer `n` find an element of order `n` in `S_ℕ`.

```py

```



### 2.2.4. Define a homomorphism D8 → S4 by labeling vertices of a square, as we did for a triangle in §2.2. List the 8 permutations in the image of this homomorphism.

```py

```



### 2.2.5. Describe generators and relations for all dihedral groups `D₂ₙ`. (Hint: let `x` be the reflection about a line through the center of a regular `n`-gon and a vertex, and let `y` be counterclockwise rotation by `2π/n`. The group `D₂ₙ` will be generated by `x` and `y`, subject to three relations. To see that these relations really determine `D₂ₙ`, use them to show that any product `x^i₁ · y^i₂ · x^i₃ · y^i₄ · ...` equals `x^i · y^j` for some `i`,`j` with `0 ≤ i ≤ 1`, `0 ≤ j < n`.)

```py

```



### 2.2.6. For every positive integer `n` `` construct a group containing two elements `g`, `h` such that `|g| = 2`, `|h| = 2`, and `|gh| = n`. (Hint: for `n > 1`, `D₂ₙ` will do.)

```py

```



### 2.2.7. Find all elements of `D₂ₙ` that commute with every other element. (The parity of `n` plays a role.)

```py

```



### 2.2.8. Find the orders of the groups of symmetries of the five ‘platonic solids’.

```py
† The full symmetry group S(X) of some solid X, is equal to the direct product of the rotational symmetry group SR(X) and ℤ₂.

⊦ tetrahedron:
- axis_vert-face: 4 × (3 - 1) = 8
- axis_edge-edge: 3 × (2 - 1) = 3
∴ 1 + 8 + 3 = 12
∴ SR(X) = 12
∴ S(X) = 24

⊦ hexahedron & octahedron:
- axis_vert-vert: 4 × (3 - 1) = 8
- axis_edge-edge: 6 × (2 - 1) = 6
- axis_face-face: 3 × (4 - 1) = 9
∴ 1 + 8 + 6 + 9 = 24
∴ SR(X) = 24
∴ S(X) = 48

⊦ dodecahedron & icosahedron:
- axis_vert-vert: 10 × (3 - 1) = 20
- axis_edge-edge: 15 × (2 - 1) = 15
- axis_face-face:  6 × (5 - 1) = 24
∴ 1 + 20 + 15 + 24 = 60
∴ SR(X) = 60
∴ S(X) = 120

```



### 2.2.9. Verify carefully that ‘congruence mod n’ is an equivalence relation.

```py
let ∀(n ∈ ℕ)
let ~ : ∀(a,b ∈ ℤ), a ~ b ⇔ ∃(k ∈ ℤ), a - b = k·n
⊦ is reflexive: (a ~ a)
  ∷ ∀(a ∈ ℤ), a - a = 0 = 0·n
  ∴ ∃(k ∈ ℤ), k = 0
  ∴ (a ~ a)
⊦ is symmetric: (a ~ b) ⇒ (b ~ a)
  ∷ ∀(a,b ∈ ℤ), a ~ b
  ⇔ ∃(k ∈ ℤ), a - b = k·n
  ⇔ ∃(k ∈ ℤ), b - a = -k·n
  ⇔ b ~ a
  ∴ (a ~ b) ⇒ (b ~ a)
⊦ is transitive: (a ~ b) ∧ (b ~ c) ⇒ (a ~ c)
  ∷ ∀(a,b,c ∈ ℤ), (a ~ b) ∧ (b ~ c)
  ⇔ ∃(k,l ∈ ℤ), (a - b = k·n) ∧ (b - c = l·n)
  ⇒ (a - b) + (b - c) = k·n + l·n
  ⇔ (a - c) = (k + l) · n # so there does exist some integer, (k+l)
  ⇔ (a ~ c)
  ∴ (a ~ b) ∧ (b ~ c) ⇒ (a ~ c)
```



### 2.2.10. Prove that `ℤ/nℤ` consists of precisely `n` elements.

```py
by definition ..?
```



### 2.2.11. Prove that the square of every odd integer is congruent to `1 mod 8`.

```py
† ∀(n ∈ ℤ), n is even ⇔ ∃(k ∈ ℤ) 2·k
† ∀(n ∈ ℤ), n is odd ⇔ ∃(k ∈ ℤ) 2·k + 1
⊦ (2·k + 1)^2 ≡₈ 1
  ∷ (2·k + 1)^2
  = (2·k + 1) · (2·k + 1)
  = 4·k^2 + 4·k + 1
  = 4·(k^2 + k) + 1
  ∷ k is even
    ∴ k^2 is even
    ∴ k^2 + k is even
    ∵ ∀(x ∈ ℤ/2ℤ), x + x = 0 # even + even = even
  ∷ k is odd
    ∴ k^2 is odd
    ∴ k^2 + k is even
    ∵ ∀(x ∈ ℤ/2ℤ), x + x = 0 # odd + odd = even
  ∴ ∃(m ∈ ℤ), k^2 + k = 2·m
  ∴ (2·k + 1)^2 = 4·(2·m) + 1
  ∴ (2·k + 1)^2 = 8·m + 1
  ∴ (2·k + 1)^2 ≡₈ 1
```



### 2.2.12. Prove that there are no integers `a`, `b`, `c` such that `a^2 + b^2 = 3·c^2`. (Hint: by studying the equation `[a]₄^2 + [b]₄^2 = 3·[c]₄^2` in `ℤ/4ℤ`, show that `a`, `b`, `c` would all have to be even. Letting `a = 2·k`, `b = 2·l`, `c = 2·m`, you would have `k^2 + l^2 = 3·m^2`. What’s wrong with that?)

```py
∷ a is even, b is even, c is even
∷ a is even, b is even, c is  odd
∷ a is even, b is  odd, c is even
∷ a is even, b is  odd, c is  odd
∷ a is  odd, b is even, c is even
∷ a is  odd, b is even, c is  odd
∷ a is  odd, b is  odd, c is even
∷ a is  odd, b is  odd, c is  odd
```



### 2.2.13. Prove that if `gcd(m,n) = 1`, then there exist integers `a` and `b` such that `a·m + b·n = 1`. (Use Corollary 2.5.) Conversely, prove that if `a·m + b·n = 1` for some integers `a` and `b`, then `gcd(m,n) = 1`.

```py
⊦ ∀(m,n ∈ ℤ), gcd(m,n) = 1 ⇒ ∃(a,b ∈ ℤ), a·m + b·n = 1
  ∷ ∀(m,n ∈ ℤ), gcd(m,n) = 1
  ⇔ ∃(a,b ∈ ℤ), m = a·1 ∧ n = b·1
  ⇒ m + n = a·1 + b·1
  ⇔ m + n = a + b
  ⇔ (m + n) / (a + b) = 1
```

```py
⊦ ∀(m,n,a,b ∈ ℤ), a·m + b·n = 1 ⇒ gcd(m,n) = 1
  ∷ a·m + b·n = 1
  ⇔ a·m = 1 - b·n
  ⇔ m | (1 - bn)
  ∷ ∃(p ∈ ℤ), (p | m) ∧ (p | n)

```



### 2.2.14. State and prove an analog of Lemma 2.2, showing that the multiplication on `ℤ/nℤ` is a well-defined operation.

```
⊦ (a ≡ₙ a') ∧ (b ≡ₙ b') ⇒ (a × b) ≡ₙ (a' × b')
  ∷ (a ≡ₙ a') ⇒ n | (a' - a) ⇔ ∃(k ∈ ℤ), (a' - a) = k·n
  ∷ (b ≡ₙ b') ⇒ n | (b' - b) ⇔ ∃(l ∈ ℤ), (b' - b) = l·n
  ∴ (a · b) - (a' · b')
  = (a · b) - (a · b') + (a · b') - (a' · b')
  = a · (b - b') + (a - a') · b'
  = a·(l·n) + (k·n)·b'
  = k·n · l·n
  = ()
```



### 2.2.15. Let `n > 0` be an odd integer.

#### 2.2.15.1 Prove that if `gcd(m, n) = 1`, then `gcd(2·m + n, 2·n) = 1`. (Use Exercise 2.13.)

#### 2.2.15.2 Prove that if `gcd(r, 2·n) = 1`, then `gcd((r+n)/2 , n) = 1`. (Ditto.)

#### 2.2.15.3 Conclude that the function `[m]_n → [2·m + n]_{2·n}` is a bijection between `(ℤ/nℤ)*` and `(ℤ/2nℤ)*`. The number `φ(n)` of elements of `(ℤ/nℤ)∗` is Euler’s φ-function. The reader has just proved that if `n` is odd, then `Φ(2·n) = Φ(n)`. Much more general formulas will be given later on.

```py

```



### 2.2.16. Find the last digit of 1238237^18238456. (Work in `ℤ/10ℤ`.)

```py

```



### 2.2.17. Show that if `m ≡ m' mod n`, then `gcd(m,n) = 1` if and only if `gcd(m' ,n) = 1`

```py

```



### 2.2.18. For `d ≤ n`, define an injective function `ℤ/dℤ → Sₙ` preserving the operation: that is, such that the sum of equivalence classes in `ℤ/nℤ` corresponds to the product of the corresponding permutations.

```py

```



### 2.2.19. Both `(ℤ/5ℤ)*` and `(ℤ/12ℤ)*` consist of 4 elements. Write their multiplication tables, and prove that no re-ordering of the elements will make them match.

```py

```


---
