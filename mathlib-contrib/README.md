# Unitary Divisor Theory in Lean 4

A formalization of unitary divisor theory and the proof that no odd unitary perfect numbers exist, implemented in Lean 4 with Mathlib.

## Overview

This repository contains a complete formalization of:

1. **Unitary Divisor Sum Function (σ\*)** - Definition and basic properties
2. **Multiplicativity Theorem** - σ\*(mn) = σ\*(m)σ\*(n) for coprime m, n
3. **Prime Power Formula** - σ\*(p^k) = p^k + 1
4. **No Odd Unitary Perfect Numbers** - Subbarao-Warren theorem (1966)

## Mathematical Background

A divisor `d` of `n` is called a **unitary divisor** if `gcd(d, n/d) = 1`. The **unitary divisor sum function** σ\*(n) is the sum of all unitary divisors of `n`.

A positive integer `n` is **unitary perfect** if σ\*(n) = 2n.

Known unitary perfect numbers: 6, 60, 90, 87360, and one 24-digit number.

**Main Theorem**: There are no odd unitary perfect numbers.

## File Structure

```
Mathlib/NumberTheory/
├── UnitaryDivisor.lean    # Core definitions and multiplicativity
└── UnitaryPerfect.lean    # Unitary perfect numbers and main theorem
```

## Main Definitions

```lean
-- A divisor d of n is unitary if gcd(d, n/d) = 1
def Nat.IsUnitaryDivisor (d n : ℕ) : Prop :=
  d ∣ n ∧ n ≠ 0 ∧ Nat.gcd d (n / d) = 1

-- The set of unitary divisors
def Nat.unitaryDivisors (n : ℕ) : Finset ℕ :=
  (Nat.divisors n).filter fun d => Nat.gcd d (n / d) = 1

-- The unitary divisor sum σ*(n)
def Nat.unitaryDivisorSum (n : ℕ) : ℕ :=
  ∑ d ∈ unitaryDivisors n, d

-- Unitary perfect: σ*(n) = 2n
def Nat.IsUnitaryPerfect (n : ℕ) : Prop :=
  n ≠ 0 ∧ σ* n = 2 * n
```

## Main Theorems

```lean
-- Multiplicativity
theorem Nat.unitaryDivisorSum_mul {m n : ℕ} (hmn : Nat.gcd m n = 1)
    (hm : m ≠ 0) (hn : n ≠ 0) : σ* (m * n) = σ* m * σ* n

-- Prime power formula
theorem Nat.unitaryDivisorSum_prime_pow {p k : ℕ} (hp : Nat.Prime p) (hk : k ≠ 0) :
    σ* (p ^ k) = p ^ k + 1

-- No odd unitary perfect numbers
theorem Nat.no_odd_unitary_perfect {n : ℕ} (hodd : Odd n) (hgt1 : n > 1) :
    ¬IsUnitaryPerfect n

-- All unitary perfect numbers are even
theorem Nat.IsUnitaryPerfect.even {n : ℕ} (h : IsUnitaryPerfect n) : Even n
```

## Building

Requires Lean 4 and Mathlib. To build:

```bash
lake build
```

## Statistics

| File | Lines | Theorems |
|------|-------|----------|
| UnitaryDivisor.lean | ~300 | 15 |
| UnitaryPerfect.lean | ~200 | 10 |
| **Total** | **~500** | **25** |

## References

1. Subbarao, M. V., & Warren, L. J. (1966). Unitary perfect numbers. *Canadian Mathematical Bulletin*, 9(2), 147-153.

2. Wall, C. R. (1975). The fifth unitary perfect number. *Canadian Mathematical Bulletin*, 18(1), 115-122.

## License

Apache 2.0

## Authors

- Zhipeng Chen (chenzhipeng@sdju.edu.cn)
- Haolun Tang
- Jing Yi Zhan

Shanghai Dianji University
