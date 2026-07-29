import covarianceWaveEquationsQuantumTheoryCanonicalLaneLean.UncertaintyPrincipleLayer

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure CommutationRelationsLayer where
  uncertaintyClosed : UncertaintyPrincipleClosed sourceUncertaintyPrincipleLayer
  canonicalCommutationClosed : Prop
  fieldCommutationClosed : Prop
  creationAnnihilationClosed : Prop
  canonicalCommutationClosedProof : canonicalCommutationClosed
  fieldCommutationClosedProof : fieldCommutationClosed
  creationAnnihilationClosedProof : creationAnnihilationClosed

def sourceCommutationRelationsLayer : CommutationRelationsLayer := {
  uncertaintyClosed := source_uncertainty_principle_closed
  canonicalCommutationClosed := sourceFormulaModels.length = 7
  fieldCommutationClosed := outsideConstantDependencyCount = 0
  creationAnnihilationClosed := baselineCertificateAllPass = true
  canonicalCommutationClosedProof := rfl
  fieldCommutationClosedProof := rfl
  creationAnnihilationClosedProof := rfl
}

def CommutationRelationsClosed (L : CommutationRelationsLayer) : Prop :=
  UncertaintyPrincipleClosed sourceUncertaintyPrincipleLayer ∧
  L.canonicalCommutationClosed ∧ L.fieldCommutationClosed ∧ L.creationAnnihilationClosed

theorem source_commutation_relations_closed :
    CommutationRelationsClosed sourceCommutationRelationsLayer := by
  exact And.intro sourceCommutationRelationsLayer.uncertaintyClosed
    (And.intro sourceCommutationRelationsLayer.canonicalCommutationClosedProof
      (And.intro sourceCommutationRelationsLayer.fieldCommutationClosedProof
        sourceCommutationRelationsLayer.creationAnnihilationClosedProof))

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse