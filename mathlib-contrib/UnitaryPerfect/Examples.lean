/-!
Examples used in the paper but not intended for Mathlib submission.
-/
import Mathlib.NumberTheory.UnitaryPerfect
import Mathlib.Tactic

namespace Nat

/-- 87360 is a unitary perfect number (computational proof for the paper). -/
theorem isUnitaryPerfect_87360 : IsUnitaryPerfect 87360 := by
  constructor <;> native_decide

end Nat
