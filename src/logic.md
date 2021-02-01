# Propositional logic

**Definition**: A proposition *p* is a "variable" that can take the value true (T) or false (F). No other.

**Remarks**:
- it is not the goal/task of propositional logic to decide if a complex proposition, eg "There exists
extra terrestrial life" is true or false. You can decide that a proposition is true or false 
but if nothing is said it is either one or the other.
- It is also not the task of propositional logic to decide if a proposition is "reasonable".

You can build new propositions for given ones using logical operators.

There are 4 unary operators:

| p | $\neg$ p | IDp | True | False |
|---|-------|-----|------|-------|
| T |   F   |  T  |  T   |   F   |
| F |   T   |  F  |  T   |   F   |


There are 16 binary operators. We only presents the most widely used:

| p | q | p $\wedge$ q | p $\vee$ q | p $\oplus$ q | p $\Rightarrow$ q |
|---|---|---------|--------|---------|--------|
| T | T |    T    |   T    |    F    |   T    |
| T | F |    F    |    T   |    T    |   F    |
| F | T |    F    |    T   |    T    |   T    |
| F | F |    F    |    F   |    F    |   T    |

Note that there is a more abstract way (than the truth tables) to come up with these operators
using axioms and deduction rules.

Also not that the implication ($p \Rightarrow q$) is quite ill-understood.
The idea is that from a false assumption you can conclude anything be it true or false.
The naive understanding is "I have p, I do something valid that leads me to q, therefore I deduce q is true".
But $p \Rightarrow q$ is just a new proposition made out of p and q, and as a whole is either true or false.

Also defining the implication this way gives us the proof by contradiction.

**Theorem**: $ (p \Rightarrow q) \Leftrightarrow (\neg q \Rightarrow \neg p) $

**Remarks**:
- We agree on the following decreasing binding strength: $\neg$, $\wedge$, $\vee$, $\Rightarrow$, $\Leftrightarrow$
- all higher order operations can all be constructed from a single "nand" binary operator.

# Predicate logic

**Definition**: A predicate is a proposition-values function of some variables.

**Examples**:
- P(x) is a proposition for some x that is either true or false.
- Q(x,y) is a proposition for some x and y that is either true or false.

**Remarks**:
- It is not the task of predicate logic to tell you how these predicates are actually built. Because
-- You need some further language to tell you how to combine x and y for instance;
-- And then what set would you take x and y from ? Well, there is no such thing as a set yet. We need
to leave it entirely open what x and y are as we want to build set theory on the **element predicate** $x \in y$.

One can construct new predicates from given ones, eg $ Q(x, y, z) := P(x) \wedge R(y, z) $.

One can convert a predicate P of one variable into a proposition: $ \forall x: P(x) $ which read
"for all x, P(x) is true".
$\forall x: P(x)$ is defined to be true independently of x.

**Definition**: $ \exists x: P(x) :\Leftrightarrow \neg ( \forall x: \neg P(x)) $ (existential quantification)

**Corollary**: $ \forall x: \neg P(x) \Leftrightarrow \neg (\exists x: P(x)) $

**Remarks**:
- Quantification of predicate of more than one variable: $ Q(y) :\Leftrightarrow \forall x: P(x, y) $.
x is a *bound* variable and y is a *free* variable.
- Order of quantifier matters: $ \forall x: \exists y: P(x, y) $ is generically different than 
$ \exists y: \forall x: P(x, y) $


# Axiomatic systems and theory of proof

**Defintion**: An axiomatic system is a **finite** sequence of **propositions** $ a_1, a_2,..., a_N $
which are called the **axioms**.

**Definition**: A proof of a proposition p within an axiomatic system $ a_1, a_2,..., a_N $ is a **finite**
sequence of propositions $ q_1, q_2,..., q_M \Leftrightarrow p $ such that for any $ 1 \le j \le M $ either:
- $ q_j $ is a proposition from the list of axioms;
- $ q_j $ is a tautology, that is a proposition that is always true indenpendant of the proposition it is made of,
eg $ p \vee \neg p $;
- $ \exists 1 \le m, n \le j: q_m \wedge q_n \Rightarrow q_j $ is true (Modus ponent)

**Notation**: If p can be proven from an axiomatic system $ a_1,..., a_N $ we often write:
$ a_1,..., a_N \vdash p $

**Remarks**:
- This definition allows us to easily recognize/check a proof.
- Any tautology, if any, in the axioms can be removed from the list of axioms without impairing the power
of the axiomatic system.

**Examples**: The axiomatic system of propositional logic has **no** axioms. Hence we can only prove tautologies.

**Definition**: An axiomatic system is **consistent** if there exists a proposition q which **cannot** be proven
from the axioms: $ \neg (a_1,..., a_N) \vdash q) $

This definition is very counter-intuitive. The idea behind that is that if the list of axioms contains contradictory
propositions $ s $ and $ \neg s $ then $ s \wedge \neg s \Rightarrow q $ is a tautology (and we can prove anything).
So clearly being consistent is a sign that there is no contradictory axioms.

**Theorem**: Propositional logic is consistent. 

Proof: Suffice to show that there exists a proposition that cannot be proven within propositional logic. 
Since propositional logic has no axioms, only tautologies and modus ponent can be used in proofs and only
tautologies can be proven, that is $ q \wedge \neg q $ **cannot** be proven.

**Remarks**: It is very difficult to prove that an axiomatic system is consistent. In certain circonstances it 
is not even possible to prove whether it is or not.

**Theorem**: (Godel) Any axiomatic system that is powerful enough to encode the elementary arithmetic of natural 
numbers is either **inconsistent** or contains a proposition that cannot be proven  nor disproven.




