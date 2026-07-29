import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ThermodynamicStabilityPackage where
  equilibriumConstant : Prop
  chelateEffect : Prop
  stabilitySeries : Prop
  pHDependence : Prop

structure ThermodynamicStabilityEvidence (T : ThermodynamicStabilityPackage) where
  equilibriumConstantClosed : T.equilibriumConstant
  chelateEffectClosed : T.chelateEffect
  stabilitySeriesClosed : T.stabilitySeries
  pHDependenceClosed : T.pHDependence

def ThermodynamicStabilityClosed (T : ThermodynamicStabilityPackage) : Prop :=
  T.equilibriumConstant ∧ T.chelateEffect ∧ T.stabilitySeries ∧ T.pHDependence

theorem thermodynamic_stability_closed_from_evidence (T : ThermodynamicStabilityPackage) (E : ThermodynamicStabilityEvidence T) :
    ThermodynamicStabilityClosed T := by
  exact And.intro E.equilibriumConstantClosed
    (And.intro E.chelateEffectClosed
      (And.intro E.stabilitySeriesClosed E.pHDependenceClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse