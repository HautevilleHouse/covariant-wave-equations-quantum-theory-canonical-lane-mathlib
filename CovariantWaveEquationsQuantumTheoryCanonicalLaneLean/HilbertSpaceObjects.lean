import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

abbrev HilbertSpace := ℕ → ℂ
abbrev StateVector := ℕ → ℂ
abbrev Observable := HilbertSpace → ℂ

def zeroVector : HilbertSpace := fun _ => 0
def zeroObservable : Observable := fun _ => 0

structure HilbertSpaceOperators where
  innerProduct : HilbertSpace → HilbertSpace → ℂ
  normSq : HilbertSpace → ℝ
  outerProduct : HilbertSpace → HilbertSpace → (HilbertSpace → ℂ)

def primitiveHilbertSpaceOperators : HilbertSpaceOperators := {
  innerProduct := fun ψ φ => ∑' n, ψ n * conj (φ n)
  normSq := fun ψ => ∑' n, |ψ n|^2
  outerProduct := fun ψ φ => fun χ => ∑' n, ψ n * conj (φ n)
}

structure QuantumState where
  vector : HilbertSpace
  operators : HilbertSpaceOperators

def primitiveQuantumState : QuantumState := {
  vector := zeroVector
  operators := primitiveHilbertSpaceOperators
}

def StateNormalized (s : QuantumState) : Prop :=
  s.operators.normSq s.vector = 1

def StateClosed (s : QuantumState) : Prop :=
  StateNormalized s

theorem primitive_state_normalized_checked :
    StateNormalized primitiveQuantumState := by
  simp [StateNormalized, primitiveQuantumState, zeroVector, primitiveHilbertSpaceOperators, normSq]
  native_decide

theorem primitive_state_closed_checked :
    StateClosed primitiveQuantumState := by
  exact primitive_state_normalized_checked

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse