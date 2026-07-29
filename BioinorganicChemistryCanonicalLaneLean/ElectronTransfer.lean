import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.BioinorganicAdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MarcusTheoryPackage where
  reorganizationEnergy : ℝ
  drivingForce : ℝ
  electronicCoupling : ℝ
  rateConstantET : ℝ
  innerSphereRearrangement : Prop

structure MarcusTheoryEvidence (M : MarcusTheoryPackage) where
  reorganizationEnergyPositive : M.reorganizationEnergy > 0
  drivingForceFinite : M.drivingForce ∈ Set.Ioo (-10) 10
  electronicCouplingSmall : M.electronicCoupling < 1
  rateConstantETPositive : M.rateConstantET > 0
  innerSphereRearrangementClosed : M.innerSphereRearrangement

def MarcusTheoryClosed (M : MarcusTheoryPackage) : Prop :=
  (M.reorganizationEnergy > 0) ∧ (M.drivingForce ∈ Set.Ioo (-10) 10) ∧
  (M.electronicCoupling < 1) ∧ (M.rateConstantET > 0) ∧ M.innerSphereRearrangement

theorem marcus_theory_closed_from_evidence (M : MarcusTheoryPackage)
    (E : MarcusTheoryEvidence M) : MarcusTheoryClosed M := by
  exact And.intro E.reorganizationEnergyPositive
    (And.intro E.drivingForceFinite
      (And.intro E.electronicCouplingSmall
        (And.intro E.rateConstantETPositive E.innerSphereRearrangementClosed)))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse