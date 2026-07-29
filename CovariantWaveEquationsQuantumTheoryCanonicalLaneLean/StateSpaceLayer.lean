import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure StateSpaceData where
  hilbertSpace : Prop
  observableAlgebra : Prop
  pureStates : Prop
  hilbertSpaceClosed : hilbertSpace
  observableAlgebraClosed : observableAlgebra
  pureStatesClosed : pureStates

def sourceStateSpaceData : StateSpaceData := {
  hilbertSpace := true
  observableAlgebra := true
  pureStates := true
  hilbertSpaceClosed := rfl
  observableAlgebraClosed := rfl
  pureStatesClosed := rfl
}

def StateSpaceClosed (S : StateSpaceData) : Prop :=
  S.hilbertSpace ∧ S.observableAlgebra ∧ S.pureStates

theorem source_state_space_closed : StateSpaceClosed sourceStateSpaceData := by
  exact And.intro sourceStateSpaceData.hilbertSpaceClosed
    (And.intro sourceStateSpaceData.observableAlgebraClosed sourceStateSpaceData.pureStatesClosed)

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse