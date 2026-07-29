import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ThermodynamicsEquilibriumPackage where
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop
  enthalpyChange : Prop
  entropyChange : Prop

structure ThermodynamicsEquilibriumEvidence (T : ThermodynamicsEquilibriumPackage) where
  equilibriumConstantClosed : T.equilibriumConstant
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange

def ThermodynamicsEquilibriumClosed (T : ThermodynamicsEquilibriumPackage) : Prop :=
  T.equilibriumConstant ∧ T.gibbsFreeEnergy ∧
  T.enthalpyChange ∧ T.entropyChange

theorem thermodynamics_equilibrium_closed_from_evidence
    (T : ThermodynamicsEquilibriumPackage) (E : ThermodynamicsEquilibriumEvidence T) :
    ThermodynamicsEquilibriumClosed T := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.enthalpyChangeClosed E.entropyChangeClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse