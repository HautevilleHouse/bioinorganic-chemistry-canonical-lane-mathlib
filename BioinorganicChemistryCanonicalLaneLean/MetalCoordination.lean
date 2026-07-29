import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.AdmissibleClass

/-!
# Metal Coordination Package for Bioinorganic Chemistry
-/

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MetalCoordinationPackage where
  coordinationGeometryDetermined : Prop
  ligandFieldSplittingComputed : Prop
  bindingConstantDerived : Prop
  metalLigandBondCharacterized : Prop

structure MetalCoordinationEvidence (M : MetalCoordinationPackage) where
  coordinationGeometryDeterminedClosed : M.coordinationGeometryDetermined
  ligandFieldSplittingComputedClosed : M.ligandFieldSplittingComputed
  bindingConstantDerivedClosed : M.bindingConstantDerived
  metalLigandBondCharacterizedClosed : M.metalLigandBondCharacterized

def MetalCoordinationClosed (M : MetalCoordinationPackage) : Prop :=
  M.coordinationGeometryDetermined ∧ M.ligandFieldSplittingComputed ∧
  M.bindingConstantDerived ∧ M.metalLigandBondCharacterized

theorem metal_coordination_closed_from_evidence
    (M : MetalCoordinationPackage) (E : MetalCoordinationEvidence M) :
    MetalCoordinationClosed M := by
  exact And.intro E.coordinationGeometryDeterminedClosed
    (And.intro E.ligandFieldSplittingComputedClosed
      (And.intro E.bindingConstantDerivedClosed E.metalLigandBondCharacterizedClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse