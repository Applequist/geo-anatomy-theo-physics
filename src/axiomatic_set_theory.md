# Axiomatic Set Theory

## The $ \in $-relation

Set theory is built on the postulate that there is a fundamental relation, i.e. a predicate of 2 variables,
called $ \in $.

There will be **no** definition of what $ \in $ is, or of what a set is. Instead, we use 9 axioms that speaks of
$ \in $ and sets.

To remember the axioms we use the following "acronym":
- E existence
- E empty set
- P pair set
- U union
- R replacement
- P Power set
- I infinity
- C Choice

F Foundation or non-existence (to exclude some kind of "problematic sets").

**Definition**: Using the $ \in $-relation we can already define:
- $ x \notin y :\Leftrightarrow \neg (x \in y) $
- $ x \subseteq y :\Leftrightarrow \forall a: a \in x \Rightarrow a \in y $
- $ x = y :\Leftrightarrow x \subseteq y \wedge y \subseteq x $

## Zermelo-Frankel axioms of set theory

### Axiom on $\in$-relation

**Definition**: $ x \in y $ is a proposition if and only if x and y are both sets. 

**Counter example**: (Russell)
Assume there is some $ \mathcal{U}$ that contains all the sets that do not contain themselves:
$\exists \mathcal{U}: \forall z: z \in \mathcal{U} \Rightarrow z \notin z $

Is $\mathcal{U}$ a set ? If it is a set, then one must be able to decide whether $\mathcal{U} \in \mathcal{U}$ 
is true or false (by the axiom on $\in$-relation). 

But if $\mathcal{U} \in \mathcal{U}$ it follows from $\mathcal{U}$'s definition that 
$\mathcal{U} \notin \mathcal{U}$ (contradiction). 

Now if $\mathcal{U} \notin \mathcal{U}$, it follows from $\mathcal{U}$'s definition that 
$\mathcal{U} \in \mathcal{U}$ (contradiction).

Conclusion:  $\mathcal{U}$ is **not** a set.

### Axiom on the existence of an empty set

**Definition**: There exists a set that contains no elements:

$ \exists x: \forall y: y \notin x $

**Theorem**: There is only one empty set and we call it $ \varnothing $.

### Axiom on pair sets

**Definition**: Let x and y be sets. Then there exists a set that contains as its elements precisely
the sets x and y:

$ \forall x: \forall y: \exists m: \forall u: ( u \in m \Leftrightarrow u = x \vee u = y ) $

We denote this set $ \{ x, y \} $.

**Remarks**:
- $\{x, y\} $ is the same as $\{y, x\}$.
- $\{x\}$ is the same as $\{x, x\}$.

### Axiom on union sets

**Definition**: Let $x$ be a set. Then there exists a set $U$ whose elements are precisely 
the elements of the elements of $x$. We note $U = \bigcup x$.

**Example**: Let $a$ and $b$ be sets. If $ x = \{\{a\}, \{b\}\} $ then $\bigcup x = \{a, b\} $

### Axiom of replacement

**Definition**: Let R be a functional relation and let m be a set. Then the image of m under R is again a set. 

Here a relation R is called functional if $\forall x: \exists! y: R(x, y)$.

The image of a set m under a functional relation R consists of all those y for which there is a $x \in m$ such that R(x, y).

The axiom of replacement is one of the most powerful axiom. It implies the **principle of restricted comprehension** (PRC):

**Corollary**: (PRC) Let P be a predicate of one variable and let m be a set, Then those elements $y \in m$ for which P(y) holds is a set.
This set is usually noted $\{y \in m | P(y) \}$.

PRC is not to be confused with the **inconsistent** PUC (principle of universal comprehension) ($\{y | P(y)\}$. Here y is not "restricted", i.e. it's too big!

**Definition**: Let $n \subseteq m$ then $m\n = \{ x \in m | x \notin n\}$ is a set due to PRC (ultimately due to the axiom of replacement).

**Definition**: Intersection. TBD

### Axiom of power set

Historically in "naive" set theory, PUC was thought to be needed in order to define the powerset of a set m: $\mathcal{P}(m) = \{ y | y \subseteq m \}$.
But this is inconsistent: y need restriction.

Instead there is no other choice than to postulate the existence of the powerset of a set m using the following axiom.

**Definition**: Let m be a set. Then there exists a set denoted $\mathcal{P}(m)$ whose elements are precisely the subsets of m.

**Example**: $m = {a, b}$ then $\mathcal{P}(m) = \{ \varnothing, \{a\}, \{b\}, \{a, b\}\}$.

Even though it seems so easy to explain, you need the axiom to do that. 

### Axiom of infinity

**Definition**: there exists a set that contains the empty set and for each of its element y, it also contains {y} as an element.

**Remark**: One such set is, informaly speaking the set with elements: $\{\varnothing, \{\varnothing\}, \{\{\varnothing\}\}, ... \}$

**Corallary**: $\mathbb{N}$ is a set.


### Axiom of choice

**Definition**: Let x be a set whose elements are
- non-empty
- mutually disjoint

Then there exists a set y which contains exactly one elements of each elements of x. 

**Remark**: 
- The axiom of choice is not needed if you can "algorithmically" pick an element from each set. But if you cannot distinguish elements from each sets,
you need the axiom of choice to pick one in each set.
- The axiom of choice is independant of the other axioms, i.e. you can build a set theory with or without it. But the proof that every vector space
has a base needs the axiom of choice, so does the proof that there exists a complete system of representation of an equivalence relation.

### Axiom of foundation

**Definition**: Every non-empty set x contains an element y that has none of its elements in common with x.

An immediate implication is that there is no set x that contains itself has an element: $x \in x$ for no set x.

## Classification of sets

A recurrent theme in mathematics is the study/classification of spaces by means of structure preserving maps between those spaces.
By space we mean a set equiped with some "structure".

**Definition**: A map $\phi: A \rightarrow B$ is a relation such that: $\forall a \in A: \exists! b \in B: \phi(a, b)$

We note:
- $\phi: A \rightarrow B: a \mapsto \phi(a) = b$ and say A is the domain of the map, B is the target of the map.
- $\phi(A) = im_{\phi}(A) = \{ b \in B | \exists a \in A: \phi(a, b) \}$
- $\forall V \subseteq B, preim_{\phi}(V) = \{ a \in A | \exists b \in V: \phi(a, b) \}$

**Definition**: Let $\phi: A \rightarrow B$ be a map. $\phi$ is said to be:
- surjective if $\phi(A) = B$;
- injective if $\phi(a_1) = \phi(a_2) \Rightarrow a_1 = a_2$
- bijective if it is injective and surjective.

**Definition**: 2 sets A and B are called (set-theoretically) isomorphic, $A \cong_{set} B$ if there exists a bijection $\phi: A \rightarrow B$.

Intuitively 2 sets are isomorphic if we can pair up their elements. It's like they have the same "size" but it works with infinite sets.

**Definition**: A set A is 
- infinite if there exists a proper subset B of A that is isomorphic to A.
  - A is called countably infinite if $A \cong_{set} \mathbb{N}$
  - A is called non-countably infinite otherwise
- finite otherwise: $A \cong_{set} \{1, 2,..., N\}$ for some $N \in \mathbb{N}$

**Definition**: Given 2 maps $\phi: A \rightarrow B$ and $\psi: B \rightarrow C$, one can construct the composition $\psi \circ \phi: A \rightarrow C, a \mapsto \psi(\phi(a))$.

Obviously composition is associative.

**Definition**: Let $\phi: A \rightarrow B$ be a **bijection**. Then the inverse of $\phi$ is the map $\phi^{-1}: B \rightarrow A$ defined uniquely by
- $\phi^{-1} \circ \phi = id_A$ 
- $\phi \circ \phi^{-1} = id_B$.

**Definition**: Let M be a set and ~ a relation. ~ is an **equivalence relation** if:
- ~ is reflexive: $\forall a \in M, m \sim m$
- ~ is symetric: $\forall m, n \in M, m \sim n \Leftrightarrow n \sim m$
- ~ is transitive: $\forall m, n, p \in M, m \sim n \wedge n \sim p \Rightarrow m \sim p$

**Definition**: Let ~ be an **equivalence relation** on a set M. 
$\forall m \in M, [m] = \{ x \in M | x \sim m \}$ is the **equivalence class** of m.

**Properties**:
- $a \in [m] \Rightarrow [a] = [m]$
- either $[m] = [n]$ or $[m] \cap [n] = \varnothing$

Intuitively equivalence relations are used to "group" together elements of a set that have the same "shape".

**Definition**: Let ~ be an equivalence relation on a set M. We can define the **quotient set** $M/_{\sim}$ as follows:
$M/_{\sim} = \{ [m] \in \mathcal{P}(M) | m \in M \}$.

**Remarks**: 
- The principle of restricted comprehension and the axiom of Powerset guarantee that $M_{\sim}$ is a set.
- Due to the axiom of choice there exists a complete system of representation of ~, i.e. a set R such that $R \cong_{set} M/_{\sim}$.
- Warning: care must be taken when defining maps whose domain is a quotient set and if one uses representative to definie the map. 

For example: if $M = \Z$ and $m \sim n :\Leftrightarrow m - n \in 2\Z$ and one tries to extend the addition to $\Z/_{\sim}$ as
$\oplus: \Z/_{\sim} \times \Z/_{\sim} \rightarrow \Z/_{\sim} : [a] \oplus [b] = [a + b]$. The $\oplus$ operation definition could be "ill-defined",
that is the result of $\oplus$ could depend on the choice of representative: $[a] \oplus [b] \neq [a'] \oplus [b']$ although $[a] = [a']$ and $[b] = [b']$.

## Construction of $\mathbb{N}$, $\mathbb{Z}$, $\mathbb{Q}$

We wish to establish the addition on $\mathbb{N}$. For that we define a map: $S: \mathbb{N} \rightarrow \mathbb{N}: n \mapsto \{n\}$. 
Then $S(2) = S(\{\{\varnothing\}\}) = \{\{\{\varnothing\}\}\} = 3$.

We also define a predecessor map: $P: \mathbb{N}^{*} \rightarrow \mathbb{N}: n \mapsto m$ such that $m \in n$. Then
$P(2) = P(\{\{\varnothing\}\}) = \{\varnothing\} = 1$.

**Definition**: the ($n \in \mathbb{N}$)-power of S is defined as $S^{n} = S \circ S^{P(n)}$ for $n \in \mathbb{N}^{*}$ and $S^0 = Id_{\mathbb{N}}$

**Definition**: $+: \mathbb{N} \times \mathbb{N} \rightarrow \mathbb{N}: (m, n) \mapsto m + n = S^n(m)$

One can verify that the addition is commutative and associative, that the neutral element is 0. 

Note that there is no additive inverse, so that $(\mathbb{N}, +)$ is not a group. This is a motivation to build $\mathbb{Z}$.

**Definition**: $\mathbb{Z} := (\mathbb{N} \times \mathbb{N})/_{\sim}$ where ~ is defined on $\mathbb{N} \times \mathbb{N}$ as:
$ (m, n) \sim (p, q) :\Leftrightarrow m + q = n + p$. One can verify that ~ is an equivalence relation.

The idea is that $(m, n)$ correspond to $m - n$ but using only addition in $\mathbb{N}$ and taking the representation using quotient.
Note that $\mathbb{N} \subseteq \mathbb{Z}$ does not make sense. But you can "embed" $\mathbb{N}$ into $\mathbb{Z}$:
$\mathbb{N} \hookrightarrow \mathbb{Z}: n \mapsto [(n, 0)]$. That is $\mathbb{N}$ is not a subset of $\mathbb{Z}$ but you can map
element of $\mathbb{N}$ to element of $\mathbb{Z}$.

**Definition**: Let $n \in \mathbb{N}$, we define $-n \in \mathbb{Z}$ as $[(0, n)]$. 

**Definition**: $+_{\mathbb{Z}}: \mathbb{Z} \times \mathbb{Z} \rightarrow \mathbb{Z}: [(m, n)] +_{\mathbb{Z}} [(p, q)] = [(m+p, n+q)]$.

Note that we should verify that is well-defined, i.e. that it doesn't depend on the representative.

$(\mathbb{Z}, +_{\mathbb{Z}})$ is a group.

**Definition**: $\mathbb{Q} :\Leftrightarrow (\mathbb{Z} \times \mathbb{Z})/_{\sim}$ where ~ is defined on $\mathbb{Z} \times \mathbb{Z}$ as:
$(x, y) \sim (u, v)$ if $x*v = y*u$ (provided we defined a multiplication on $\mathbb{Z}$).

The idea is that $\frac{x}{y} \sim [(x, y)]$.

Note that has nothing to do with division: $\frac{8}{2} = 4$ is a non-sense but $\frac{8}{2} = \frac{4}{1}$ has. 

You can embed $\mathbb{Z}$ into $\mathbb{Q}$: $\mathbb{Z} \hookrightarrow \mathbb{Q}: x \mapsto [(x, 1)]$.

**Definition**: $+_{\mathbb{Q}}: \mathbb{Q} \times \mathbb{Q} \rightarrow \mathbb{Q}: [(x, y)] +_{\mathbb{Q}} [(u, v)] = [(x*_{\mathbb{Z}}v +_{\mathbb{Z}} y*_{\mathbb{Z}}u, y *_{\mathbb{Z}} v)]



