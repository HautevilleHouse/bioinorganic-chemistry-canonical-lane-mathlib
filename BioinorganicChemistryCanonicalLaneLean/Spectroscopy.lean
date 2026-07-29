import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.AdmissibleClass

/-!
# Spectroscopy Package for Bioinorganic Chemistry
-/

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure SpectroscopyPackage where
  uvVisParametersSet : Prop
  eprParametersSet : Prop
  moessbauerParametersSet : Prop
  spectralAssignmentComplete : Prop

structure SpectroscopyEvidence (S : SpectroscopyPackage) where
  uvVisParametersSetClosed : S.uvVisParametersSet
  eprParametersSetClosed : S.eprParametersSet
  moessbauerParametersSetClosed : S.moessbauerParametersSet
  spectralAssignmentCompleteClosed : S.spectralAssignmentComplete

def SpectroscopyClosed (S : SpectroscopyPackage) : Prop :=
  S.uvVisParametersSet ∧ S.eprParametersSet ∧
  S.moessbauerParametersSet ∧ S.spectralAssignmentComplete

theorem spectroscopy_closed_from_evidence
    (S : SpectroscopyPackage) (E : SpectroscopyEvidence S) :
    SpectroscopyClosed S := by
  exact And.intro E.uvVisParametersSetClosed
    (And.intro E.eprParametersSetClosed
      (And.intro E.moessbauerParametersSetClosed E.spectralAssignmentCompleteClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse