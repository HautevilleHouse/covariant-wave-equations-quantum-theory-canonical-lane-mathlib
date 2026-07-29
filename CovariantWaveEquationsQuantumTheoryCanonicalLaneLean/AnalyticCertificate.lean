import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure CovariantWaveQuantumAnalyticCertificate where
  substrateQuantumStateSpaceClosed : Prop
  actionLayerClosed : Prop
  spectralTheoremClosed : Prop
  canonicalCarriageImported : Prop
  substrateQuantumStateSpaceClosedProof : substrateQuantumStateSpaceClosed
  actionLayerClosedProof : actionLayerClosed
  spectralTheoremClosedProof : spectralTheoremClosed
  canonicalCarriageImportedProof : canonicalCarriageImported

def sourceCovariantWaveQuantumAnalyticCertificate : CovariantWaveQuantumAnalyticCertificate := {
  substrateQuantumStateSpaceClosed := QuantumStateSpaceClosed sourceQuantumStateSpace
  actionLayerClosed := CovariantActionClosed sourceCovariantActionEnvelope
  spectralTheoremClosed := SpectralTheoremClosed sourceSpectralTheoremCertificate
  canonicalCarriageImported := True
  substrateQuantumStateSpaceClosedProof := source_quantum_state_space_closed
  actionLayerClosedProof := source_covariant_action_closed
  spectralTheoremClosedProof := source_spectral_theorem_closed
  canonicalCarriageImportedProof := trivial
}

def CovariantWaveQuantumAnalyticCertificateClosed (C : CovariantWaveQuantumAnalyticCertificate) : Prop :=
  C.substrateQuantumStateSpaceClosed ∧ C.actionLayerClosed ∧ C.spectralTheoremClosed ∧ C.canonicalCarriageImported

theorem source_covariant_wave_quantum_analytic_certificate_closed :
    CovariantWaveQuantumAnalyticCertificateClosed sourceCovariantWaveQuantumAnalyticCertificate := by
  exact And.intro sourceCovariantWaveQuantumAnalyticCertificate.substrateQuantumStateSpaceClosedProof
    (And.intro sourceCovariantWaveQuantumAnalyticCertificate.actionLayerClosedProof
      (And.intro sourceCovariantWaveQuantumAnalyticCertificate.spectralTheoremClosedProof sourceCovariantWaveQuantumAnalyticCertificate.canonicalCarriageImportedProof))

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
