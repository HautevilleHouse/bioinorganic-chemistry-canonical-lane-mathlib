import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.BioinorganicAdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ThermodynamicsPackage where
  gibbsFreeEnergyChange : ℝ
  enthalpyChange : ℝ
  entropyChange : ℝ
  spontaneity : Prop
  redoxPotential : ℝ

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  gibbsFreeEnergyChangeNegative : T.gibbsFreeEnergyChange < 0
  enthalpyChangeMeasured : T.enthalpyChange ∈ Set.Ioo (-1000) 1000
  entropyChangePositive : T.entropyChange > 0
  spontaneityClosed : T.spontaneity
  redoxPotentialMeasured : T.redoxPotential ∈ Set.Ioo (-3) 3

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  (T.gibbsFreeEnergyChange < 0) ∧ (T.enthalpyChange ∈ Set.Ioo (-1000) 1000) ∧
  (T.entropyChange > 0) ∧ T.spontaneity ∧ (T.redoxPotential ∈ Set.Ioo (-3) 3)

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage)
    (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.gibbsFreeEnergyChangeNegative
    (And.intro E.enthalpyChangeMeasured
      (And.intro E.entropyChangePositive
        (And.intro E.spontaneityClosed E.redoxPotentialMeasured)))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse