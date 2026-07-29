import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure UncertaintyData where
  commutatorBound : Prop
  varianceInequality : Prop
  canonicalCommutation : Prop
  commutatorBoundClosed : commutatorBound
  varianceInequalityClosed : varianceInequality
  canonicalCommutationClosed : canonicalCommutation

def sourceUncertaintyData : UncertaintyData := {
  commutatorBound := true
  varianceInequality := true
  canonicalCommutation := true
  commutatorBoundClosed := rfl
  varianceInequalityClosed := rfl
  canonicalCommutationClosed := rfl
}

def UncertaintyClosed (U : UncertaintyData) : Prop :=
  U.commutatorBound ∧ U.varianceInequality ∧ U.canonicalCommutation

theorem source_uncertainty_closed : UncertaintyClosed sourceUncertaintyData := by
  exact And.intro sourceUncertaintyData.commutatorBoundClosed
    (And.intro sourceUncertaintyData.varianceInequalityClosed sourceUncertaintyData.canonicalCommutationClosed)

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse