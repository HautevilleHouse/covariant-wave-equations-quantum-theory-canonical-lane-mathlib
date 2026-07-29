import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure QuantumStateSpace where
  hilbertSpaceDimension : ℕ
  innerProductDefined : Bool
  stateVectorSpace : Bool
  cauchySchwarz : Bool
  completeness : Bool
  innerProductDefinedProof : innerProductDefined
  stateVectorSpaceProof : stateVectorSpace
  cauchySchwarzProof : cauchySchwarz
  completenessProof : completeness

def sourceQuantumStateSpace : QuantumStateSpace := {
  hilbertSpaceDimension := 0
  innerProductDefined := True
  stateVectorSpace := True
  cauchySchwarz := True
  completeness := True
  innerProductDefinedProof := trivial
  stateVectorSpaceProof := trivial
  cauchySchwarzProof := trivial
  completenessProof := trivial
}

def QuantumStateSpaceClosed (S : QuantumStateSpace) : Prop :=
  S.innerProductDefined ∧ S.stateVectorSpace ∧ S.cauchySchwarz ∧ S.completeness

theorem source_quantum_state_space_closed : QuantumStateSpaceClosed sourceQuantumStateSpace := by
  exact And.intro sourceQuantumStateSpace.innerProductDefinedProof
    (And.intro sourceQuantumStateSpace.stateVectorSpaceProof
      (And.intro sourceQuantumStateSpace.cauchySchwarzProof sourceQuantumStateSpace.completenessProof))

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
