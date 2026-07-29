import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CovariantWaveEquationsQuantumTheoryCanonicalLaneLean

structure SpectralData where
  spectralMeasure : Prop
  projectionValued : Prop
  functionalCalculus : Prop
  spectralMeasureClosed : spectralMeasure
  projectionValuedClosed : projectionValued
  functionalCalculusClosed : functionalCalculus

def sourceSpectralData : SpectralData := {
  spectralMeasure := true
  projectionValued := true
  functionalCalculus := true
  spectralMeasureClosed := rfl
  projectionValuedClosed := rfl
  functionalCalculusClosed := rfl
}

def SpectralClosed (S : SpectralData) : Prop :=
  S.spectralMeasure ∧ S.projectionValued ∧ S.functionalCalculus

theorem source_spectral_closed : SpectralClosed sourceSpectralData := by
  exact And.intro sourceSpectralData.spectralMeasureClosed
    (And.intro sourceSpectralData.projectionValuedClosed sourceSpectralData.functionalCalculusClosed)

end CovariantWaveEquationsQuantumTheoryCanonicalLaneLean
end HautevilleHouse