import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MetalComplexStructuralPackage where
  metalCenter : Type u
  coordinationGeometry : Type v
  dOrbitalSplitting : Type w
  ligandFieldStrength : Prop
  geometryStable : Prop
  splittingPatternKnown : Prop

structure MetalComplexStructuralEvidence (M : MetalComplexStructuralPackage) where
  ligandFieldStrengthClosed : M.ligandFieldStrength
  geometryStableClosed : M.geometryStable
  splittingPatternKnownClosed : M.splittingPatternKnown

def MetalComplexStructuralClosed (M : MetalComplexStructuralPackage) : Prop :=
  M.ligandFieldStrength ∧ M.geometryStable ∧ M.splittingPatternKnown

theorem metal_complex_structural_closed_from_evidence
    (M : MetalComplexStructuralPackage) (E : MetalComplexStructuralEvidence M) :
    MetalComplexStructuralClosed M := by
  exact And.intro E.ligandFieldStrengthClosed
    (And.intro E.geometryStableClosed E.splittingPatternKnownClosed)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse