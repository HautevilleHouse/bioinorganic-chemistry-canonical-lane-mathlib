import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure LigandFieldPackage where
  crystalFieldSplitting : Prop
  ligandStrengthSeries : Prop
  dOrbitalEnergyDiagram : Prop
  spectrochemicalSeries : Prop

structure LigandFieldEvidence (L : LigandFieldPackage) where
  crystalFieldSplittingClosed : L.crystalFieldSplitting
  ligandStrengthSeriesClosed : L.ligandStrengthSeries
  dOrbitalEnergyDiagramClosed : L.dOrbitalEnergyDiagram
  spectrochemicalSeriesClosed : L.spectrochemicalSeries

def LigandFieldClosed (L : LigandFieldPackage) : Prop :=
  L.crystalFieldSplitting ∧ L.ligandStrengthSeries ∧ L.dOrbitalEnergyDiagram ∧ L.spectrochemicalSeries

theorem ligand_field_closed_from_evidence (L : LigandFieldPackage) (E : LigandFieldEvidence L) :
    LigandFieldClosed L := by
  exact And.intro E.crystalFieldSplittingClosed
    (And.intro E.ligandStrengthSeriesClosed
      (And.intro E.dOrbitalEnergyDiagramClosed E.spectrochemicalSeriesClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse