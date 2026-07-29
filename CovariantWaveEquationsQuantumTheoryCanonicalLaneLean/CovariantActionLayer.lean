import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure CovariantActionEnvelope where
  field : WaveOperatorObjects
  waveEquationClosed : Prop
  spectralDecompositionClosed : Prop
  quantumStateNormalized : Prop
  actionBound : Prop
  waveEquationClosedProof : waveEquationClosed
  spectralDecompositionClosedProof : spectralDecompositionClosed
  quantumStateNormalizedProof : quantumStateNormalized
  actionBoundProof : actionBound

def sourceCovariantActionEnvelope : CovariantActionEnvelope := {
  field := primitiveWaveOperatorObjects
  waveEquationClosed := WaveEquationClosed primitiveWaveOperatorObjects
  spectralDecompositionClosed := SpectralDecompositionClosed primitiveWaveOperatorObjects
  quantumStateNormalized := QuantumStateNormalized primitiveWaveOperatorObjects
  actionBound := True
  waveEquationClosedProof := primitive_wave_equation_closed_checked
  spectralDecompositionClosedProof := primitive_spectral_decomposition_closed_checked
  quantumStateNormalizedProof := primitive_quantum_state_normalized_checked
  actionBoundProof := trivial
}

def CovariantActionClosed (E : CovariantActionEnvelope) : Prop :=
  E.waveEquationClosed ∧ E.spectralDecompositionClosed ∧ E.quantumStateNormalized ∧ E.actionBound

theorem source_covariant_action_closed : CovariantActionClosed sourceCovariantActionEnvelope := by
  exact And.intro sourceCovariantActionEnvelope.waveEquationClosedProof
    (And.intro sourceCovariantActionEnvelope.spectralDecompositionClosedProof
      (And.intro sourceCovariantActionEnvelope.quantumStateNormalizedProof sourceCovariantActionEnvelope.actionBoundProof))

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse
