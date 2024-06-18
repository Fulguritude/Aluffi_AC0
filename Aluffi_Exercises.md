
# Aluffi

---

different symbols used for contradiction:
- ⊥ (false tautology)
- ⇒⇐ (conflicting implications)
- ※ (japanese asterisk)
- ⛝ (crossed box - normal box being "end of proof")
- ↯ (thunderbolt of god's logic smiting you)

## 0) Set exercices

### 0.1) Notating sets

- the set of all odd integers  
`{ 2·k+1 | k ∈ ℤ }`
`{ -3, -1, 1, 3, 5, 7, 9, 11, ... }`

- the set of all integers that are not multiples of 3  
`{ 3·n = k | k ∈ ℤ, n ∉ ℤ }`
`{ -5, -4, -2, -1, 1, 2, 4, 5, 7, 8, 10, 11, 13, 14, ... }`

- the set of integers from 10 to 20 (included)  
`{ n | n ∈ ℤ, 10 ≤ n ≤ 20] }`
`{ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 }`

- the set of integers from 10 to 20 (excluded)  
`{ n | n ∈ ℤ, 10 ≤ n < 20 }`
`{ 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 }`

- the set of pairs of integers with both elements of the same value  
`{ (n,m) ∈ ℤ² | n = m }`
`{ (-1,-1), (0,0), (1,1), (2,2), (3,3), ... }`

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

### 0.2) Describing sets

- `{ 3·n+2 | n ∈ ℕ }`
the set of natural numbers that are immediately before/inferior to a multiple of 3
`{ 2, 5, 8, 11, 14, 17, 20, 23, 26, 29, ... }`

- `{ 3·k+2 | k ∈ ℤ }`
the set of integers that are immediately before/inferior to a multiple of 3
`{ -7, -4, -1, 2, 5, 8, 11, 14, 17, ... }`

- `{ 2ⁱ | i ∈ [[0,10]] }`
the set of powers of two between 1 and 1024, included
`{ 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024 }`

- `{ (x,y) ∈ ℝ² | x² + y² = 1 }`
the set of pairs of real numbers whose sum of squares equals 1
`{ (0,1), (1,0), (√0.5,√0.5), (√0.3,√0.7), ... }`

- `{ x ∈ ℝ | -2 ≤ x ≤ 2 }`
the set of real numbers between -2 and +2, included
`{ -2, -1.1234567, 0, 0.0000001, 1, 2, ... }`

- `{ (m,n,p) ∈ ℕ³ | m+n+p = 10 }`
the set of triplets of naturals that together sum to 10
`{ (0,0,10), (1,2,7), (5,5,0), ... }`



---

## 1) Set theory and categories

### 1.0) Lexicon

- [*set*](https://en.wikipedia.org/wiki/Set_(mathematics)): a set is a collection of different things; these things are called *elements* or *members* of the set and are typically mathematical objects of any kind: numbers, symbols, points in space, lines, other geometrical shapes, variables, or even other sets. A set may have a finite number of elements or be an infinite set - furthermore, there is a unique set with no elements, called the *empty set*. A set with a single element is a *singleton* set.
- [*subset*/*superset*](https://en.wikipedia.org/wiki/Subset): a set 𝐴 is a *subset* of a set 𝐵 if all elements of 𝐴 are also elements of 𝐵; 𝐵 is then said to be a *superset* of 𝐴. It is possible for 𝐴 and 𝐵 to be equal; if they are unequal, then 𝐴 is a *proper subset* of 𝐵.
- [*partition*](https://en.wikipedia.org/wiki/Partition_of_a_set): a grouping of a set's elements into non-empty subsets, in such a way that every element is included in exactly one subset.
- [*domain*](https://en.wikipedia.org/wiki/Domain_of_a_function): the set of inputs accepted by the function. It is sometimes denoted by `dom(f)`.
- [*codomain*](https://en.wikipedia.org/wiki/Codomain): a set into which all of the output of the function is constrained to fall. It is sometimes denoted by `cod(f)`.
- [*image*/*preimage*](https://en.wikipedia.org/wiki/Image_(mathematics)): for a function 𝑓 : 𝑋 → 𝑌, the image of an input value 𝑥 is the single output value produced by 𝑓 when passed 𝑥. The preimage of an output value 𝑦 is the set of input values that produce 𝑦.
- [*cartesian product*](https://en.wikipedia.org/wiki/Cartesian_product): An operation that takes two sets and produces every possible ordered pair of elements from those two sets.
  `∀(A,B in Set) | A × B = { (a,b) | (a ∈ A) ∧ (b ∈ B) }`
- [*disjoint*](https://en.wikipedia.org/wiki/Disjoint_sets): two sets are said to be disjoint if their intersection is empty.
- [*relation*](https://en.wikipedia.org/wiki/Binary_relation): a binary logical operator which is a set of ordered pairs from two sets.
- [*reflexive*](https://en.wikipedia.org/wiki/Reflexive_relation): property of a relation that it relates each element to itself.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x ∈ X) | x ○ x`
- [*irreflexive*](https://en.wikipedia.org/wiki/Reflexive_relation#Irreflexive_relation): property of a relation that it never relates an element to itself.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x ∈ X) | ¬(x ○ x)`
- [*symmetric*](https://en.wikipedia.org/wiki/Symmetric_relation): property of a relation that the left-right order is interchangeable.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X) | x ○ y ⇔ y ○ x`
- [*antisymmetric*](https://en.wikipedia.org/wiki/Antisymmetric_relation): property of a relation that two distinct elements cannot be symmetrically related.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X) | (x ○ y) ∧ (y ○ x) ⇒ (x = y)`
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y ∈ X) | (x ≠ y) ⇒ ¬(x ○ y) ∨ ¬(y ○ x)`
- [*transitive*](https://en.wikipedia.org/wiki/Transitive_relation): property of a relation that the relationship can be applied to between two elements indirectly, via an intermediary.
  `∀(X in Set) ∀(○ ⊆ (X × X)) ∀(x,y,z ∈ X) | ((x ○ y) ∧ (y ○ z)) ⇒ (x ○ z)`
- [*equivalence relation*](https://en.wikipedia.org/wiki/Equivalence_relation): a binary relation that is reflexive, symmetric and transitive.
- [*equivalence class*](https://en.wikipedia.org/wiki/Equivalence_class): Each equivalence relation provides a partition of the underlying set into disjoint equivalence classes. Two elements of the given set are equivalent to each other if and only if they belong to the same equivalence class.



### 1.1) Locate a discussion of Russell’s paradox, and understand it.

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



### 1.2) Prove that if `~` is a relation on a set `S`, then the corresponding family `P~` defined in §1.5 is indeed a partition of `S`: that is, its elements are nonempty, disjoint and their union is `S`. [§1.5]

We have a set `S` and a nondistinct relation `~`:
`S/~ := P~`
In the resulting set, we have some equivalence classes.
- `P~` has no empty elements: All such equivalence classes are non-empty, for if they were, they wouldn't be an equivalence class at all.
- `P~` elements are disjoint: ???
- `P~` union of all sub-elements makes up the original set `S`: ???



### 1.3) Given a partition `P` on a set `S`, show how to define a relation `~` on `S` such that `P` is the corresponding partition. [§1.5]

Question poorly phrased - i can define one by just using "let"...
`∃~ ∀P ∀S, S/~ = P`



### 1.4) How many different equivalence relations may be defined on the set `{1,2,3}`?

There are only 5 possible partitions:
```
{{1},{2},{3}}
{{1},{2,3}}
{{2},{1,3}}
{{3},{1,2}}
{{1,2,3}}
```
Does this mean there are 5 equivalence classes though ? idk



### 1.5) Give an example of a relation that is reflexive and symmetric, but not transitive. What happens if you attempt to use this relation to define a partition on the set? (Hint: thinking about the second question will help you answer the first one.)

Let's imagine a "similarity relation" we can notate with `≈`; we can imagine it to work like a looser version of equality (say for example, if an integer is only 1 away, then it counts as similar).
- reflexive: `∀(a ∈ S) | a ≈ a` (an element is always "similar" to itself)
- symmetric: `∀(a ∈ S) ∀(b ∈ S) | a ≈ b ⇒ b ≈ a` ("similarity" goes both ways)
- not transitive: `∀(a ∈ S) ∀(b ∈ S) ∀(c ∈ S) | (a ≈ b ∧ b ≈ c) ⤃ a ≈ c` (just because `a ≈ b` and `b ≈ c` are similar, that doesn't mean `a ≈ c` works, because it is possible for the "similarity gap" to be too large to qualify as "similar").

If we use this to define a partition `P` on some set `S`:
`S/≈ := P≈`, there is ambiguity as to which element should go into which equivalence class.



### 1.6) Define a relation `~` on the set `ℝ` of real numbers, by setting `a ~ b ⇔ (b − a) ∈ ℤ`. Prove that this is an equivalence relation, and find a ‘compelling’ description for `ℝ/~`. Do the same for the relation `≈` on the plane `ℝ × ℝ` defined by declaring `(a₁,a₂) ≈ (b₁,b₂) ⇔ (b₁ − a₁) ∈ ℤ ∧ (b₂ − a₂) ∈ ℤ`. [§II.8.1, II.8.10]

Let's prove that `~` such that `a ~ b ⇔ (b − a) ∈ ℤ` is an equivalence relation:
- reflexive: `∀(a ∈ ℝ), a ~ a` because:
```
⊦ a ~ a
⇔ (a − a) ∈ ℤ
⇔ 0 ∈ ℤ
⇔ ⊤
```
- symmetric: `∀(a ∈ ℝ) ∀(b ∈ ℝ) | a ~ b ⇒ b ~ a` because:
```
⊦ a ~ b ⇔ b ~ a
⇒ (b−a) ∈ ℤ ⇔ (a−b) ∈ ℤ
⇒ |b−a| ∈ ℤ ⇔ |a−b| ∈ ℤ
⊦ |b−a| = |a−b|
⊦ a ~ b ⇔ (b − a) ∈ ℤ
⊦ b ~ a ⇔ (a − b) ∈ ℤ
∴ ⊤
```
- transitive: `∀(a ∈ ℝ) ∀(b ∈ ℝ) ∀(c ∈ ℝ) | (a ~ b ∧ b ~ c) ⇒ a ~ c` because:
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
- reflexive: `∀(a ∈ ℝ²) | a ≈ a` because:
```
⊦ a ≈ a
⇒ (a₁ − a₁) ∈ ℤ ∧ (a₂ − a₂) ∈ ℤ
⇒ 0 ∈ ℤ ∧ 0 ∈ ℤ
∴ ⊤
```
- symmetric: `∀(a ∈ ℝ²) ∀(b ∈ ℝ²) | a ≈ b ⇒ b ≈ a` because:
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
- transitive: `∀(a ∈ ℝ²) ∀(b ∈ ℝ²) ∀(c ∈ ℝ²) | (a ≈ b ∧ b ≈ c) ⇒ a ≈ c` because:
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

## 2) Functions over sets

### 2.0) Lexicon

- [*function*](https://en.wikipedia.org/wiki/Function_(mathematics)): A function on sets is a relation where any element of its domain has exactly one relation pair coming out of it.
  `∀(A,B in Set) ∀(f ∈ (A → B)) ∀(a ∈ A) ∃!(b ∈ B) | f(a) = b`
- [*composition*](https://en.wikipedia.org/wiki/Function_composition): A operation that takes two functions, and creates a new function which is the application of one function after the other.
  `∀(A,B,C in Set) ∀(f ∈ A→B) ∀(g ∈ B→C) | (g ∘ f)(x) = g(f(x))`
- [*identity*](https://en.wikipedia.org/wiki/Identity_(mathematics)): A morphism that relates any input element to the same (identical) output element.
  `∀(A in Set) ∀(id ∈ (A → A)) ∀(a ∈ A) | id(a) = a`
- [*left-inverse*|*post-inverse*](https://en.wikipedia.org/wiki/Inverse_function#Left_inverses): A morphism which, when applied after, composes with the one before it to give the identity on its codomain
  In Set: `∀(f ∈ A→B) (f is injective) ⇔ (f has left-inverse)`
  In general: `g ∈ Hom(B, A) is a post-inverse ⇔ ∃f ∈ Hom(A, B) such that g ∘ f = id_A`
- [*right-inverse*|*pre-inverse*](https://en.wikipedia.org/wiki/Inverse_function#Right_inverses): A morphism which, when applied before, composes with the one after it to give the identity on its domain
  In Set: `∀(f ∈ A→B) (f is surjective) ⇔ (f has right-inverse)`
  In general: `f ∈ Hom(A, B) is a pre-inverse ⇔ ∃g ∈ Hom(B, A) such that g ∘ f = id_A`
- [*injective*](https://en.wikipedia.org/wiki/Injective_function): each and every input of the function is mapped to a different output
  `∀(f : A→B) (f is injective) ⇔ ∀(a₁,a₂ ∈ A) (a₁ = a₂ ⇒ f(a₁) = f(a₂))`
- [*surjective*](https://en.wikipedia.org/wiki/Surjective_function): every element of the function's codomain is mapped to by some input
  `∀(f : A→B) (f is surjective) ⇔ (∀b ∈ B) (∃a ∈ A) | (b = f(a))`
- [*bijective*](https://en.wikipedia.org/wiki/Bijection): the function is both injective and surjective, each and every element from domain and codomain are mapped one-to-one
  `∀(f ∈ A→B) (f is bijective) ⇔ (f has two-sided inverse)`
- [*monomorphism*](https://en.wikipedia.org/wiki/Monomorphism): is a morphism which when applied in parallel after a pair of distinct morphisms, cannot make the overall two operations equal
  `∀(g in Hom(B,C)) (g is monomorphism)
    ⇔ ∀(A) ∀(α₁,α₂ ∈ Hom(A,B)) (g∘α₁ = g∘α₂ ⇒ α₁ = α₂)
    ⇔ ∀(C) ∀(α₁,α₂ ∈ Hom(A,B)) (α₁ ≠ α₂ ⇒ g∘α₁ ≠ g∘α₂)`
- [*epimorphism*](https://en.wikipedia.org/wiki/Epimorphism): is a morphism which when applied in parallel before a pair of distinct morphisms cannot make the overall two operations equal
  `∀(f in Hom(A,B)) (f is epimorphism)
    ⇔ ∀(C) ∀(β₁,β₂ ∈ Hom(B,C)) (β₁∘f = β₂∘f ⇒ β₁ = β₂)
    ⇔ ∀(C) ∀(β₁,β₂ ∈ Hom(B,C)) (β₁ ≠ β₂ ⇒ β₁∘f ≠ β₂∘f)`
- [*isomorphism*](https://en.wikipedia.org/wiki/Isomorphism): a morphism which has a two-sided inverse morphism
  `∀(f in Hom(A,B)) (f is isomorphism) ⇔ (f has both a left-inverse and a right-inverse)`




### 2.1) How many different bijections are there between a set `S` with `n` elements and itself? [§II.2.1]

There are `n!` possible unique bijections. This is akin to asking how many permutations a deck of cards can have.

Imagine there are 3 elements, we have:
```
1-1 2-2 3-3
1-1 2-3 3-2
1-2 2-1 3-3
1-2 2-3 3-1
1-3 2-1 3-2
1-3 2-2 3-1
```
`3! = 6` possible bijections



### 2.2) Prove statement (2) in Proposition 2.1. You may assume that given a family of disjoint subsets of a set, there is a way to choose one element in each member of the family. [§2.5, V.3.3]

`∀A (A ≠ ∅)`
`∀B`
`∀f (f ∈ A → B)`
`∀(a',a") ∈ A² (a' ≠ a")`

#### 2.2.1) `f` has a left inverse iff it is injective

##### 2.2.1.⇒) assume `f` has a left inverse:
```
∃g (g ∈ B → A) (g∘f = id_A)
g(f(a')) = id_A(a') = a' ≠ a" = id_A(a") = g(f(a"))
```
##### 2.2.1.⇐) assume `f` is injective:
```
∷ a' ≠ a" ⇒ f(a') ≠ f(a")
∷ ∀a ∈ A
∷ ∀s ∈ A
∷ g ∈ B → A
∷ g(b) := a if b = f(a)
∷ g(b) := s if b ∉ im f
⇒ g∘f(a) = a = id_A(a)
```

#### 2.2.2) `f` has a right inverse iff it is surjective

##### 2.2.2.⇒) assume `f` has a right inverse:
```
∷ ∃g (g ∈ B → A) (f∘g = id_B)
∴ ∀(b ∈ B) (∃a ∈ A)    g(b)  = a
∴ ∀(b ∈ B) (∃a ∈ A)  f(g(b)) = f(a)
∴ ∀(b ∈ B) (∃a ∈ A)      b   = f(a)
```
##### 2.2.2.⇐) assume `f` is surjective:
```
∷ ∀(b ∈ B) ∃(a ∈ A) | b = f(a)
g ∈ B → A

???
```



### 2.3) Prove that the inverse of a bijection is a bijection, and that the composition of two bijections is a bijection.

#### 2.3.1) prove that the inverse of a bijection is a bijection

`let f⁻¹ ∈ B → A | f⁻¹ ∘ f = id_A`

##### 2.3.1.a) show that `f⁻¹` is injective

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

##### 2.3.1.b) show that `f⁻¹` is surjective

```py
∷ ∃(g ∈ B → A) | g∘f = id_A
∴ ∀(a ∈ A) ∃(b ∈ B)     f(a) = b     # by definition of a function
∴ ∀(a ∈ A) ∃(b ∈ B)  g(f(a)) = g(b)  # by applying g to both sides
∴ ∀(a ∈ A) ∃(b ∈ B)        a = g(b)  # by cancellation
```
thus `a` has an antecedent by `g`, which is `b`, so `g` is surjective

#### 2.3.2) show that the composition of two bijections is a bijection

Let `f ∈ (A → B)` and `g ∈ (B → C)`, both bijective (hence with inverses in their respective function spaces).
Let
```
∷ h ∈ (A → C) | h = g ∘ f
∷ h⁻¹ ∈ (C → A)
h⁻¹ = f⁻¹ ∘ g⁻¹
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



### 2.4) Prove that ‘isomorphism’ is an equivalence relation (on any set of sets). [§4.1]

- reflexive: `∀A | A ≅ A` because:
	there is the identity function which is a one-to-one mapping of itself
- symmetric: `∀A ∀B | A ≅ B ⇒ B ≅ A` because:
	bijection being a perfect one-to-one mapping, it goes both ways
- transitive: `∀A ∀B ∀C | (A ≅ B ∧ B ≅ C) ⇒ A ≅ C` because:
	one can translate the one-to-one mapping of A→B, to B→C, because `|A| = |B| = |C|`



### 2.5) Formulate a notion of epimorphism, in the style of the notion of monomorphism seen in §2.6, and prove a result analogous to Proposition 2.3, for epimorphisms and surjections. [§2.6, §4.2]

#### 2.5.1) A function is injective iff it is a monomorphism.

monomorphism definition:
```
∀(A,B,Z) ∀(f ∈ A → B) ∀(α',α" ∈ Z → A) | f∘α' = f∘α" ⇒ α' = α"
```

##### 2.5.1.⇒) assuming that `f` is injective, prove that it is a monomorphism.

By Proposition 2.1, if a function `f ∈ A → B` is injective, then it has a left inverse `g ∈ B → A`. 
Now assume that `α'`, `α"` are arbitrary functions from another set `Z` to `A`, and that `f ∘ α'= f ∘ α'` ; compose on the left by `g`, and use associativity of composition:
`(g ∘ f) ∘ α'= g ∘ (f ∘ α') = g ∘ (f ∘ α") = (g ∘ f ) ∘ α'` ;
since `g` is a left inverse of `f`, this says
`id_A ∘ α'= id_A ∘ α'`,
and therefore `α'= α"`, as needed to conclude that f is a monomorphism.

##### 2.5.1.⇐) assuming that `f` is a monomorphism, prove that it is injective.

This says something about arbitrary sets Z and arbitrary functions `Z → A`; we are going to use a microscopic portion of this information, choosing `Z` to be any singleton `{p}`. Then assigning functions `α',α" ∈ Z → A` amounts to choosing to which elements `a'= α'(p)`, `a"= α"(p)` we should send the single element `p` of `Z`. For this particular choice of `Z`, the property defining monomorphisms,

`f ∘ α'= f ∘ α" ⇒ α'= α'`
`f ∘ α'(p) = f ∘ α"(p) ⇒ α'= α'`
`f (a') = f (a") ⇒ α'= α"`
Now two functions from `Z = {p}` to `A` are equal if and only if they send `p` to the same element, so this says:
`f (a') = f (a") ⇒ a'= a'`
This has to be true for all `α'`, `α"`, that is, for all choices of distinct `a'`, `a"` in `A`. In other words, `f` has to be injective, as was to be shown.

#### 2.5.2) A function is surjective iff it is an epimorphism.

epimorphism definition:
```
∀(A,B) ∀(f ∈ A → B) ∀(g₁,g₂ ∈ B → A) | g₁∘f = g₂∘f ⇒ g₁ = g₂
```

##### 2.5.2.⇒) assuming that `f` is surjective, prove that it is an epimorphism.

```py
† ∃(g ∈ B → A) | f ∘ g = id_B # f is surjective, so it has pre-inverse
∷ ∀(Z) ∀((h₁,h₂) ∈ B → Z)
∷  h₁ ∘ f      = h₂ ∘ f
⇒ (h₁ ∘ f) ∘ g = (h₂ ∘ f) ∘ g
⇔ h₁ ∘ (f ∘ g) = h₂ ∘ (f ∘ g)
⇔ h₁ ∘ id_B    = h₂ ∘ id_B
⇔ h₁           = h₂
∴ h₁ ∘ f = h₂ ∘ f ⇒ h₁ = h₂
```

##### 2.5.2.⇐) assuming that `f` is a epimorphism, prove that it is surjective.

```py
† ∀(A,B) ∀(f ∈ A → B)
† ∀(g₁,g₂ ∈ B → A) | g₁∘f = g₂∘f ⇒ g₁ = g₂ # f is epimorphism

∷ f is not surjection
⇒ ∃(x ∈ B) | x ∉ f(A)

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

∴ ∀(b ∈ B) ∃(a ∈ A) | b = f(a) # f is surjective
```



### 2.6) With notation as in Example 2.4, explain how any function `f ∈ A → B` determines a section of `π_A`.

```
† ∀(f ∈ A → B)
∷ ∀(f^ ∈ A → (A×B)) | f^ = (a ⟼ (a,f(a)))
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



### 2.7) Let `f ∈ A → B` be any function. Prove that the graph `Γ_f` of `f` is isomorphic to `A`.

```py
† ∀(f ∈ A → B)
∷ Γ_f := { (a,b) ∈ A×B | f(a) = b } ⊆ A×B # the graph contains all pairs
∵ ∀(a ∈ A) ∃!(b ∈ B) | f(a) = b # since there is only one output b for each a
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

∷ f¯ ∈ (A → Γ_f) | f¯ = (a ⟼ f^(a))
∴ f¯ is injective	∵ (f^ is injective) ∧ (Z ⊆ A×B) 
∴ f¯ is surjective	∵ (A = im_f)
∴ f¯ is bijective
∴ Γ_f ≅ A
```



### 2.8) Describe as explicitly as you can all terms in the canonical decomposition (cf. §2.8) of the function `ℝ → ℂ` defined by `r ⟼ e^(2·π·i·r)`. (This exercise matches one assigned previously, which one?)

```py
† ∀(f ∈ ℝ → ℂ) | f(r) = e^(2·π·i·r)

# canonical projection
	ℝ → S¹ ⊆ [0,1[
# canonical bijection
	f(c) := e^(2πir)
# canonical inclusion
	im_f = 𝕌 ⊆ ℂ

ℝ ——>> [0,1[ ——(e^(2πir))—> 𝕌 ——> ℂ
```
This matches exercise 1.6 done previously.



### 2.9) Show that if `A' ≅ A"` and `B' ≅ B"`, and further `A' ∩ B' = ∅` and `A" ∩ B" = ∅`, then `A' ∪ B' ≅ A" ∪ B"`. Conclude that the operation `A ⊔ B` (as described in §1.4) is well-defined *up to isomorphism* (cf. §2.9). [§2.9, 5.7]

??? "well-defined up to isomorphism" ?

```py
† A₁ ≅ A₂
† B₁ ≅ B₂
† A₁ ∩ B₁ = ∅
† A₂ ∩ B₂ = ∅

∷ ∃(f_A : A₁ → A₂) | f_A is bijective
∷ ∃(f_B : B₁ → B₂) | f_B is bijective

∷ ∃(f : A₁∪B₁ → A₂∪B₂)
  | ∀(a ∈ A₁)  f(a) = f_A(a)
  | ∀(b ∈ B₁)  f(b) = f_B(b)
∵ A₁ ∩ B₁ = ∅
∴ ∀(x ∈ A₁∪B₁) ∃!(y ∈ A₂∪B₂) | f(x) = y

∷ ∃(g : A₂∪B₂ → A₁∪B₁)
  | ∀(a ∈ A₂)  g(a) = f⁻¹_A(a)
  | ∀(b ∈ B₂)  g(b) = f⁻¹_B(b)
∵ A₂ ∩ B₂ = ∅
∴ ∀(x ∈ A₂∪B₂) ∃!(y ∈ A₁∪B₁) | f(x) = y

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



### 2.10) Show that if `A` and `B` are finite sets, then `|B^A| = |B|^|A|`. [§2.1, 2.11, §II.4.1]

``` py
† ∃(n_A ∈ ℕ) | n_A = |A| # A is a finite set
† ∃(n_B ∈ ℕ) | n_B = |B| # B is a finite set
∴ |B|^|A| = n_B ^ n_A

† B^A = A → B   # B^A is the set of all functions from A to B
∵ ∀(f ∈ A → B) ∀(a ∈ A) ∃!(b ∈ B) | f(a) = b   # f is a function
∴ we have n_B possible outputs, each of which is reached from n_A possible inputs
∴ |B^A| = n_B ^ n_A

∴ |B|^|A| = n_B ^ n_A = |B^A|
```



### 2.11) In view of Exercise 2.10, it is not unreasonable to use `2^A` to denote the set of functions from an arbitrary set `A` to a set with 2 elements (say `{0,1}`). Prove that there is a bijection between `2^A` and the *power set* of `A` (cf. §1.2). [§1.2, III.2.3]

```py
† ∃(n_A ∈ ℕ) | n_A = |A| # A is a finite set
† 𝔹 = {0,1} # we denote 𝔹 the set with only two elements

∷ ∀(f ∈ A → 𝔹)
∴ ∀(a ∈ A) ∃!(b ∈ 𝔹) | f(a) = b   # f is a function
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

## 3) Categories

### 3.0) Lexicon

- [*category*](https://en.wikipedia.org/wiki/Category_(mathematics)): A collection of "objects" that are linked by "arrows". A category has two basic properties: the ability to compose the arrows associatively and the existence of an identity arrow for each object.
- [*object*](https://en.wikipedia.org/wiki/Mathematical_object): an abstract entity arising in mathematics.
- [*morphism*|*arrow*](https://en.wikipedia.org/wiki/Morphism): a morphism is a directed/oriented form of transformation or relation between two objects, usually represneted as an arrow between two objects.
- [*hom-class*|*homset*](?): The collection of all morphisms from one object to another. If the hom-class behaves like a "set" (i.e. it is "small" enough) then we call it a *homset*. usually notated `Hom_𝓒(𝐴,𝐵)` for a given category 𝓒 with objects 𝐴 and 𝐵.
- [*operation*](https://en.wikipedia.org/wiki/Operation_(mathematics)): Takes two objects and transforms those into one objects - a composition law.
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



### 3.0) Examples

ex.3.2 - category of sets
```py
∷ let Set in Cat
∷ Obj(Set) = all sets
∷ Hom_Set(A,B) : B ^ A

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.3 - preorder category on a set
```py
† S in Obj(Set)
† ~ is relation
  | ∀a | a ~ a                           # ~ is reflexive
  | ∀(a,b,c) | a ~ b ∧ b ~ c ⇒ a ~ c     # ~ is transitive

∷ let Ṡ in Cat
∷ Obj(Ṡ) = ∀(a ∈ S)
∷ Hom_Ṡ(a,b) : if (a ~ b) then {(a,b)} else ∅

⊦ hasidentity:
  ∵ ∀(a ∈ S) | a ~ a
  ∴ 1_a = (a,a) ∈ Hom_Ṡ(a,a)   
⊦ composition:
  ∵ ∀(a,b,c) | a~b ∧ b~c ⇒ a ~ c
  ∴ (g∘f := (a,c) ∈ Hom_Ṡ(A,C))
⊦ associative:
  ∵ f=(a,b) ∧ g=(b,c) ∧ h=(c,d) ⇒ g∘f=(a,c) ∧ h∘g=(b,d)
  ∴ h∘(g∘f) = (a,d) = (h∘g)∘f
⊦ id_composit:
  ∷ ∀(f ∈ Hom_Ṡ(a,b))
  ∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
  ∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```
ex.3.4 - inclusion category on a powerset
```py
† S in Obj(Set)
† ⊆ is relation

∷ let Ŝ in Cat
∷ Obj(Ŝ) = 𝓟(S)
∷ Hom_Ŝ(A,B) : if (A ⊆ B) then {0} else ∅

⊦ hasidentity:
  ∵ A ⊆ A
  ∴ 1_A ∈ Hom_Ŝ(A,A)
⊦ composition:
  ∵ A ⊆ B ∧ B ⊆ C ⇒ A ⊆ C
  ∴ ∀(A→B) ∀(B→C) ∃(A→C)
⊦ associative:
  ?
⊦ id_composit:
  ?
```
ex.3.5 - slice category (abstract)
```py
† 𝓒 in Cat
† A in Obj(𝓒)

∷ let 𝓒_A in Cat
∷ Obj(𝓒_A) = f in ⋃_{∀Z in Obj(𝓒)} (Hom_𝓒(Z,A))
∷ Hom_{𝓒_A}(f₁,f₂) : σ_n such that ∃σ_o ∈ (Hom_𝓒(Z₁,A) → Hom_𝓒(Z₂,A))
commuting as below.
    ∀(Z₁ in Obj(𝓒))
    ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.6 - slice category (concrete)
```py
† 𝓒 in Cat
† A in Obj(𝓒) | A = 3
† S = ℤ
† ~ = ≤

∷ let 𝓒_{3} in Cat
∷ Obj(𝓒_{3}) = (n,3) ∈ ℤ×ℤ  ∀(n ∈ ℤ | n ≤ 3)
∷ Hom_𝓒_{3}(m,n) = ∀(m) ∀(n) | ((m,3) → (n,3))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.6.BONUS - slice category (matrix)
```py
† 𝓒 = the subcategory of Vect_ℝ consisting of finite-dimensional vector spaces
† ℝ³ in Obj(𝓒)   # the chosen slicing object
† A in Hom_𝓒(ℝᴺ,ℝ³) ∀(N ∈ ℕ)
† B in Hom_𝓒(ℝᴹ,ℝ³) ∀(M ∈ ℕ)
† C in Hom_𝓒(ℝ³ˣᴺ, ℝ³ˣᴹ) ∀(N ∈ ℕ) ∀(M ∈ ℕ)

∷ let 𝓒_{ℝ³} in Cat
∷ Obj(𝓒_{ℝ³}) = elements of the form A_{ℝ³} (or (ℝᴺ,A)) containing the same data as A, but existing in 𝓒_{ℝ³}
∷ Hom_𝓒_{ℝ³}(A_{ℝ³},B_{ℝ³}) :
   ∀(C in Hom_𝓒(ℝ³ˣᴺ, ℝ³ˣᴹ) | (A = B·C))
   ∃(σ in Hom_𝓒_{ℝ³}(A_{ℝ³},B_{ℝ³}) | σ(A_{ℝ³}) = B_{ℝ³})
   with σ containing the same data as C

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.7 - coslice category (abstract)
```py
† 𝓒 in Cat
† A in Obj(𝓒)

∷ let 𝓒^A in Cat
∷ Obj(𝓒^A) = Hom_𝓒(A,Z) ∀(Z in Obj(𝓒))
∷ Hom_𝓒^A(Z₁,Z₂) : σ ∈ (Hom_𝓒(A,Z₁) → Hom_𝓒(A,Z₂))
    ∀(Z₁ in Obj(𝓒))
    ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.8 - coslice category (concrete)
```py
† Set
† {*} in Obj(Set) | |{*}| = 1
† S in Obj(Set)
† T in Obj(Set)
† f in Hom_Set({*},S)
† g in Hom_Set({*},T)

∷ let Set^{*} in Cat
∷ Obj(Set^{*}) = elements of the for f^*, having the same
  data as some morphism f ∈ ({*} → S) in Set
∷ Hom_{Set^{*}}(f^*,g^*) :
   ∀(h in Hom_Set(S, T) | (h·f = g)
   ∃(σ in Hom_{Set^{*}}(f^*,g^*) | σ(f^*) = g^*)
   with σ containing the same data as h

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.8.BONUS - coslice category (matrix)
```py
† 𝓒 = the subcategory of Vect_ℝ consisting of finite-dimensional vector spaces
† ℝ³ in Obj(𝓒)   # the chosen slicing object
† A in Hom_𝓒(ℝ³,ℝᴺ) ∀(N ∈ ℕ)
† B in Hom_𝓒(ℝ³,ℝᴹ) ∀(M ∈ ℕ)
† C in Hom_𝓒(ℝᴹˣ³, ℝᴺˣ³) ∀(N ∈ ℕ) ∀(M ∈ ℕ)

∷ let 𝓒^{ℝ³} in Cat
∷ Obj(𝓒^{ℝ³}) = elements of the form A^{ℝ³} (or (ℝᴺ,A))
   containing the same data as A, but existing in 𝓒^{ℝ³}
∷ Hom_{𝓒^{ℝ³}}(A^{ℝ³},B^{ℝ³}) :
   ∀(C in Hom_𝓒(ℝᴹˣ³, ℝᴺˣ³) | (A = C·B))
   ∃(σ in Hom_{𝓒^{ℝ³}}(B^{ℝ³},A^{ℝ³}) | σ(B^{ℝ³}) = A^{ℝ³})
   with σ containing the same data as C

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.9 - bislice category
```py
† 𝓒 in Cat
  | A in Obj(𝓒)
  | B in Obj(𝓒)

∷ let 𝓒_{A,B} in Cat
∷ Obj(𝓒_{A,B}) = p in ⋃_{Z in Obj(𝓒)} ( Hom_𝓒(Z,A) × Hom_𝓒(Z,B) )
∷ Hom_{𝓒_{A,B}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (Hom_𝓒(Z₁,A) × Hom_𝓒(Z₁,B)) → (Hom_𝓒(Z₂,A) × Hom_𝓒(Z₂,B))
    commuting as below.
  ∀(Z₁ in Obj(𝓒))
  ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.9.BONUS - bicoslice category
```py
† 𝓒 in Cat
  | A in Obj(𝓒)
  | B in Obj(𝓒)

∷ let 𝓒^{A,B} in Cat
∷ Obj(𝓒^{A,B}) = p in ⋃_{Z in Obj(𝓒)} ( Hom_𝓒(A,Z) × Hom_𝓒(B,Z) )
∷ Hom_{𝓒^{A,B}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (Hom_𝓒(A,Z₁) × Hom_𝓒(B,Z₁)) → (Hom_𝓒(A,Z₂) × Hom_𝓒(B,Z₂))
    commuting as below.
  ∀(Z₁ in Obj(𝓒))
  ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.10 - fibered bislice category
```py
† 𝓒 in Cat
  | A in Obj(𝓒)
  | B in Obj(𝓒)
  | C in Obj(𝓒)
  | α ∈ (A → C)
  | β ∈ (B → C)

∷ let 𝓒_{α,β} in Cat
∷ Obj(𝓒_{α,β}) = p in ⋃_{Z in Obj(𝓒)} ( Hom_𝓒(Z,A) × Hom_𝓒(Z,B) )
  | α ∘ f = β ∘ g
∷ Hom_{𝓒_{α,β}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (Hom_𝓒(Z₁,A) × Hom_𝓒(Z₁,B)) → (Hom_𝓒(Z₂,A) × Hom_𝓒(Z₂,B))
    commuting as below.
  ∀(Z₁ in Obj(𝓒))
  ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
ex.3.10 - fibered bicoslice category
```py
† 𝓒 in Cat
  | A in Obj(𝓒)
  | B in Obj(𝓒)
  | C in Obj(𝓒)
  | α ∈ (C → A)
  | β ∈ (C → B)

∷ let 𝓒^{α,β} in Cat
∷ Obj(𝓒^{α,β}) = p in ⋃_{Z in Obj(𝓒)} ( Hom_𝓒(A,Z) × Hom_𝓒(B,Z) )
  | f ∘ α = g ∘ β
∷ Hom_{𝓒^{α,β}}(p₁,p₂) = σ_n such that
  ∃σ_o ∈ (Hom_𝓒(A,Z₁) × Hom_𝓒(B,Z₁)) → (Hom_𝓒(A,Z₂) × Hom_𝓒(B,Z₂))
    commuting as below.
  ∀(Z₁ in Obj(𝓒))
  ∀(Z₂ in Obj(𝓒))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```



### 3.1)

```py
† 𝓒 in Cat

∷ let 𝓒ᵒᵖ in Cat
∷ Obj(𝓒ᵒᵖ) = Obj(𝓒)
∷ Hom_𝓒ᵒᵖ(A,B) = ∀(A,B) in Obj(𝓒), Hom_𝓒(B,A)

⊦ hasidentity:
  ∵ ∃(1_A ∈ Hom_𝓒(A,A))
  ∴ ∃(1_A ∈ Hom_𝓒ᵒᵖ(A,A))
⊦ composition:
  ∵ ∀(f ∈ C→B) ∀(g ∈ B→A) ∃(h ∈ C→A)
  ∴ ∀(g`∈ A→B) ∀(f`∈ B→C) ∃(h`∈ A→C)
⊦ associative:
  ∵ ∀(f,g,h ∈ Hom_𝓒())   h∘(g∘f) = (h∘g)∘f
  ∴ ∀(f,g,h ∈ Hom_𝓒ᵒᵖ()) h∘(g∘f) = (h∘g)∘f
⊦ id_composit:
  ∷ ∀(f ∈ Hom_𝓒ᵒᵖ(a,b))
  ∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
  ∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```



### 3.2)

```py
† A in Set
  | ∃(n ∈ ℕ) |A| = n

∵ End_Set(A) = Hom_Set(A,A)
∴ |End_Set(A)| = |Hom_Set(A,A)| = |A|^|A| = n ^ n
# all the possible mappings of input-to-output within finite set A
```



### 3.3)

```py
∷ ∀(f ∈ Hom_Ṡ(a,b))
∴ f ∘ 1_a = (a,b)∘(a,a) = (a,b) = f
∴ 1_b ∘ f = (b,b)∘(a,b) = (a,b) = f
```



### 3.4)

```py
† ℤ in Obj(Set)
† < is relation

∷ let 𝓩 in Cat
∷ Obj(𝓩) = ∀(z ∈ ℤ)
∷ Hom_𝓩(a,b) = (a,b) if (a < b) else ∅

⊦ hasidentity:
  ∵ ∀(a ∈ ℤ) ↯ (a < a)
  ∴ ∄(1_a | (a,a) ∈ Hom_𝓩(a,a))
  ※ # no identity function
⊦ composition:
  ∵ ∀(a,b,c) | a<b ∧ b<c ⇒ a < c
  ∴ (g∘f := (a,c) ∈ Hom(A,C))
⊦ associative:
  ∵ f=(a,b) ∧ g=(b,c) ∧ h=(c,d) ⇒ g∘f=(a,c) ∧ h∘g=(b,d)
  ∴ h∘(g∘f) = (a,d) = (h∘g)∘f
⊦ id_composit:
  ?
```



### 3.5)

Well, `⊆` is a reflexive and transitive order relation:
```py
⊦ ⊆ is reflexive:   ∀a | a ⊆ a                       
⊦ ⊆ is transitive:  ∀(a,b,c) | (a ⊆ b) ∧ (b ⊆ c) ⇒ (a ⊆ c) 
```
So `⊆` is really just a concrete example of the abstract relation `~`.



### 3.6)

```py
∷ let 𝓥 in Cat
∷ Obj(𝓥) = ℕ
∷ Hom_𝓥(n,m) = ∀(n,m) ∈ ℕ² | Mat(ℝ, n × m)

⊦ hasidentity:
  
  ∴ ∃(1_A ∈ Hom_𝓥(n,m))
⊦ composition:
  ?
⊦ associative:
  ?
⊦ id_composit:
  ?
```



### 3.7)

```py
† 𝓒 in Cat # from previous example ex3.5
∷ A in Obj(𝓒)

∷ let 𝓒_A in Cat
∷ Obj(𝓒_A) = ∀(Z) in Obj(𝓒) | Hom_𝓒(A,Z)
∷ Hom_𝓒_A(Z₁,Z₂) = ∀(Z₁ in Obj(𝓒)) ∀(Z₂ in Obj(𝓒)) | (Hom_𝓒(A,Z₁),Hom_𝓒(A,Z₂))

⊦ hasidentity: ?
⊦ composition: ?
⊦ associative: ?
⊦ id_composit: ?
```
```
∀(f in Hom_𝓒_A(Z₁,Z₂))
∃(f₁,f₂):

        A         
      ↙   ↘       
    f₁ —f→ f₂     
   ↙         ↘   
 Z₁  ———σ——→  Z₂ 

∀(g in Hom_𝓒_A(Z₃,Z₄))
f ∘ g:

          A           
      ↙   ↓   ↘       
    a —f→ b —g→ c     
  ↙       ↓       ↘   
 Z₁ ——σ—→ Z₂ ——τ—→ Z₃ 

```



### 3.8)

```py
∷ ∃(InfSet | ∀(A in Obj(Set) | ∄(n ∈ ℕ, |A| = n)))
∴ InfSet is subcategory of Set
  ∵ (InfSet) inherits from (Set) all identity morphisms
  ∵ (InfSet) inherits from (Set) all composition rules
  ∵ (InfSet) inherits from (Set) all associativity rules
∵ all is conserved, and homsets between infinite sets are also infinite
∴ InfSet is full subcategory of Set
```



### 3.9)

```py
∷ let MSet in Set
?
```



### 3.10)

```py
† 𝓒 in Cat | Obj(𝓒) = Set
† A in Obj(𝓒)

A → Ω
⊦ subobject classifier :
  ∷ ∃(𝔹 in Obj(Set) | 𝔹 = {0,1})
  ∴ ∀(B in Obj(Set)) ∀(A in Obj(Set) | A ⊆ B)
    ∃(f : B → 𝔹 | ∀(b ∈ B | f(b) = 1 ⇔ b ∈ A) else f(b) = 0)
  ∵ 𝓟(S) = { ∃(f ∈ S → 𝔹) | ∀(a ∈ S) | f(a) = 1 }
  ∴ Ω = {0,1} = 𝔹
```



### 3.11)

```py

```



---

## 4) Morphisms

### 4.0) Lexicon

- [*groupoid*](https://en.wikipedia.org/wiki/Groupoid): a category in which every morphism is an isomorphism.
- [*endomorphism*](https://en.wikipedia.org/wiki/Endomorphism): a morphism from some object 𝐴 to itself.
- [*automorphism*](https://en.wikipedia.org/wiki/Automorphism): an isomorphism from some object 𝐴 to itself.



### 4.1) Composition is defined for two morphisms. If more than two morphisms are given, e.g.: `A —f→ B —g→ C —h→ D —i→ E`, then one may compose them in several ways.

#### 4.1.1) For example: `(ih)(gf)`, `(i(hg))f`, `i((hg)f)`, etc. so that at every step one is only composing two morphisms.

```py
⊦ parentheses dont matter in this case with 5 sets
  ⊦ composition is associative
  ∷ h∘(g∘f)(x) = h(g∘f(x)) = h(g(f(x)) = h∘g(f(x)) = (h∘g)∘f(x)
  ∴ h∘(g∘f)(x) = (h∘g)∘f(x)
∴ (i∘h)∘(g∘f)(x) = (i∘(h∘g))∘f(x) = i∘((h∘g)∘f)(x)
```

#### 4.1.2) Prove that the result of any such nested composition is independent of the placement of the parentheses.

```py
† 𝓒 in Cat
† ∀(A,B,C,D in Obj(𝓒))
† ∀(f ∈ Hom_𝓒(A,B))
† ∀(g ∈ Hom_𝓒(B,C))
† ∀(h ∈ Hom_𝓒(C,D))

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



### 4.2) In Example 3.3 we have seen how to construct a category from a set endowed with a relation, provided this latter is reflexive and transitive. For what types of relations is the corresponding category a groupoid (cf. Example 4.6)?

```py
# A groupoid is a category in which every morphism is an isomorphism.
# An isomorphism is a morphism which has both left-inverse and right-inverse.
∴ ∀m morphism (a ~ b) ∃m⁻¹ (b ~ a)
∴ binary relation symmetry for all morphisms ⇔ groupoid
∴ ∀S in Set | there is an equivalence relation is a groupoid
```



### 4.3) Let `A`, `B` be objects of a category `𝓒`, and `f ∈ Hom_𝓒(A, B)` a morphism.

#### 4.3.1) Prove that if `f` has a right-inverse, then `f` is an epimorphism.

```py
† 𝓒 is Cat
† ∀(A,B in Obj(𝓒))
† f ∈ Hom_𝓒(A,B)

∷ ∃g ∈ Hom(B,A) | g∘f = id_A
∷ ∀(C) ∀(β₁,β₂ ∈ Hom(B,C))
∷ β₁∘f = β₂∘f
  ⇒ (β₁∘f)∘g = (β₂∘f)∘g
  ⇒ β₁∘(f∘g) = β₂∘(f∘g)
  ⇒ β₁∘id_A = β₂∘id_A
  ⇒ β₁ = β₂
∴ (β₁∘f = β₂∘f ⇒ β₁ = β₂)
```

#### 4.3.2) Show that the converse does not hold, by giving an explicit example of a category and an epimorphism without a right-inverse.

```py
ex: ℤ and ≤

⊦ (ℤ,≤) is epimorphism
  ∷ Hom(1,2), 1≤2 = single morphism
  ∷ Hom(2,1), 2≤1 = ∅
  ∴ (β₁∘(≤) = β₂∘(≤) ⇒ β₁ = β₂) # trivial..?
⊦ (ℤ,≤) has no right-inverse
  ∷ ∃f | 
```



### 4.4) Prove that the composition of two monomorphisms is a monomorphism. Deduce that one can define a subcategory `𝓒ₘₒₙₒ` of a category `𝓒` by taking the same objects as in `𝓒`, and defining `Hom_𝓒ₘₒₙₒ(A,B)` to be the subset of `Hom_𝓒(A, B)` consisting of monomorphisms, for all objects `A`, `B`. (Cf. Exercise 3.8; of course, in general `𝓒ₘₒₙₒ` is not full in `𝓒`.)

#### 4.4.1) Do this for monomorphisms.

```py
† ∃𝓒 in Cat
† ∀(A,B,C,Z ∈ in Obj(𝓒))
∷ ∀(f ∈ Hom_𝓒(A,B) | f is monomorphism)
∷ ∀(g ∈ Hom_𝓒(B,C) | g is monomorphism)
⊦ (g ∘ f) is monomorphism
  ∷ ∀(α₁ ∈ Hom_𝓒(Z,A))
  ∷ ∀(α₂ ∈ Hom_𝓒(Z,A))
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

#### 4.4.2) Do the same for epimorphisms.

```py
† ∃𝓒 in Cat
† ∀(A,B,C,Z ∈ in Obj(𝓒))
∷ ∀(f ∈ Hom_𝓒(A,B) | f is epimorphism)
∷ ∀(g ∈ Hom_𝓒(B,C) | g is epimorphism)
⊦ (g ∘ f) is epimorphism
  ∷ ∀(β₁ ∈ Hom_𝓒(Z,A))
  ∷ ∀(β₂ ∈ Hom_𝓒(Z,A))
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

#### 4.4.3) Can you define a subcategory `𝓒ₙₒₙₘₒₙₒ` of `𝓒` by restricting to morphisms that are not monomorphisms?

```py
∷ 𝓒ₙₒₙₘₒₙₒ is 𝓒 but without identity morphisms
∴ 𝓒ₙₒₙₘₒₙₒ ∵ a category must have identity
```



### 4.5) Give a concrete description of monomorphisms and epimorphisms in the category `MSet` you constructed in Exercise 3.9.

```py

```



## 5) Universal Properties

### 5.0) Lexicon

- [*_*](https://en.wikipedia.org/wiki/): 



