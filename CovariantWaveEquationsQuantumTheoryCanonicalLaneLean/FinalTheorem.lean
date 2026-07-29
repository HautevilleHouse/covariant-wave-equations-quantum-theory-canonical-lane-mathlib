import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CovariantWaveEquationsQuantumTheoryCanonicalLaneLean.SpectralTheoremLayer
import HautevilleHouse.CovariantWaveEquationsQuantumTheoryCanonicalLaneLean.UncertaintyPrincipleLayer
import HautevilleHouse.CovariantWaveEquationsQuantumTheoryCanonicalLaneLean.StateSpaceLayer

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.sourceKeyChecked A.object.theoremObjectChecked

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) :
    ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse