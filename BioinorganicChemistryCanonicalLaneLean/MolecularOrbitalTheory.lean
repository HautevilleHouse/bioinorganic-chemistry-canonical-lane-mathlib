import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  ligandFieldSplitting : Prop
  crystalFieldStabilization : Prop
  electronConfiguration : Prop
  spectrochemicalSeries : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  ligandFieldSplittingClosed : M.ligandFieldSplitting
  crystalFieldStabilizationClosed : M.crystalFieldStabilization
  electronConfigurationClosed : M.electronConfiguration
  spectrochemicalSeriesClosed : M.spectrochemicalSeries

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.ligandFieldSplitting ∧ M.crystalFieldStabilization ∧
  M.electronConfiguration ∧ M.spectrochemicalSeries

theorem molecular_orbital_theory_closed_from_evidence
    (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.ligandFieldSplittingClosed
    (And.intro E.crystalFieldStabilizationClosed
      (And.intro E.electronConfigurationClosed E.spectrochemicalSeriesClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse