# Unitary Divisor Theory Formalization in Lean 4

Formalization of unitary divisor sum function σ* and proof that no odd unitary
perfect numbers exist, in Lean 4 with Mathlib.

## Overview

This project formalizes:
1. **Unitary divisor sum function σ\*** - definition and properties
2. **Multiplicativity theorem** - σ\*(mn) = σ\*(m)σ\*(n) for coprime m,n
3. **Prime power formula** - σ\*(p^k) = p^k + 1
4. **No odd unitary perfect numbers** - classical result by Subbarao & Warren (1966)

## Project Goals

- [ ] Submit paper to Annals of Formalized Mathematics (AFM)
- [ ] Contribute σ* theory to Mathlib

## Project Structure

```
.
├── paper/                      # AFM论文相关
│   ├── outline.md             # 论文大纲
│   ├── figures/               # 图表
│   └── drafts/                # 草稿
├── mathlib-contrib/           # Mathlib贡献代码
│   ├── UnitaryDivisor.lean    # 核心理论
│   └── UnitaryPerfect.lean    # 完全数理论
├── docs/                      # 文档
│   ├── ROADMAP.md            # 路线图
│   └── CHECKLIST.md          # 检查清单
└── README.md                  # 本文件
```

## Source Code

Original formalization: `/home/biostar/work/math/lean_formalization/WallTheorem/`

## Key Results Formalized

### 1. Unitary Divisor Sum Function (σ*)

```lean
def IsUnitaryDivisor (d n : ℕ) : Prop :=
  d ∣ n ∧ n ≠ 0 ∧ Nat.gcd d (n / d) = 1

def unitaryDivisorSum (n : ℕ) : ℕ :=
  ∑ d ∈ unitaryDivisors n, d
```

### 2. Multiplicativity (Fully Proven)

```lean
theorem unitaryDivisorSum_mul {m n : ℕ} (hmn : Nat.gcd m n = 1)
    (hm : m ≠ 0) (hn : n ≠ 0) :
    σ* (m * n) = σ* m * σ* n
```

### 3. Prime Power Formula (Fully Proven)

```lean
theorem unitaryDivisorSum_prime_pow {p k : ℕ} (hp : Nat.Prime p) (hk : k ≠ 0) :
    σ* (p ^ k) = p ^ k + 1
```

### 4. No Odd Unitary Perfect Numbers (Fully Proven)

```lean
theorem no_odd_unitary_perfect {n : ℕ} (hodd : Odd n) (hgt1 : n > 1) :
    ¬IsUnitaryPerfect n
```

## References

- Subbarao, M. V., & Warren, L. J. (1966). Unitary perfect numbers.
  Canadian Journal of Mathematics, 18, 217-221.
- Wall, C. R. (1975). The fifth unitary perfect number.
  Canadian Mathematical Bulletin, 18(1), 115-122.

## License

Apache 2.0
