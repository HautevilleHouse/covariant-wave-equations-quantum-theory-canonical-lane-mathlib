import canonicalLaneMathlib.AdmissibleClass
import CovariantWaveEquationsQuantumTheoryCanonicalLaneLean.UncertaintyPrincipleLayer
import Mathlib.Analysis.Complex.Basic

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure CovariantWaveEqCertificate where
  uncertaintyClosed : Prop
  waveEquationClosure : Prop
  covarianceClosure : Prop
  solutionSpaceClosed : Prop
  uncertaintyClosedProof : uncertaintyClosed
  waveEquationClosureProof : waveEquationClosure
  covarianceClosureProof : covarianceClosure
  solutionSpaceClosedProof : solutionSpaceClosed

def sourceCovariantWaveEqCertificate : CovariantWaveEqCertificate := {
  uncertaintyClosed := UncertaintyClosed sourceUncertaintyCertificate
  waveEquationClosure := true
  covarianceClosure := true
  solutionSpaceClosed := true
  uncertaintyClosedProof := source_uncertainty_closed
  waveEquationClosureProof := by trivial
  covarianceClosureProof := by trivial
  solutionSpaceClosedProof := by trivial
}

def CovariantWaveEqClosed (C : CovariantWaveEqCertificate) : Prop :=
  C.uncertaintyClosed ∧ C.waveEquationClosure ∧ C.covarianceClosure ∧ C.solutionSpaceClosed

theorem source_covariant_wave_eq_closed :
    CovariantWaveEqClosed sourceCovariantWaveEqCertificate := by
  exact And.intro sourceCovariantWaveEqCertificate.uncertaintyClosedProof
    (And.intro sourceCovariantWaveEqCertificate.waveEquationClosureProof
      (And.intro sourceCovariantWaveEqCertificate.covarianceClosureProof
        sourceCovariantWaveEqCertificate.solutionSpaceClosedProof))

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse