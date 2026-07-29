import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MetalloproteinActiveSitePackage (A : AdmissibleClass) where
  coordinationGeometry : Prop
  metalLigandBinding : Prop
  redoxPotential : Prop
  catalyticMechanism : Prop

structure MetalloproteinActiveSiteEvidence {A : AdmissibleClass} (P : MetalloproteinActiveSitePackage A) where
  coordinationGeometryClosed : P.coordinationGeometry
  metalLigandBindingClosed : P.metalLigandBinding
  redoxPotentialClosed : P.redoxPotential
  catalyticMechanismClosed : P.catalyticMechanism

def MetalloproteinActiveSiteClosed {A : AdmissibleClass} (P : MetalloproteinActiveSitePackage A) : Prop :=
  P.coordinationGeometry ∧ P.metalLigandBinding ∧ P.redoxPotential ∧ P.catalyticMechanism

theorem metalloprotein_active_site_closed_from_evidence
    {A : AdmissibleClass} (P : MetalloproteinActiveSitePackage A) (E : MetalloproteinActiveSiteEvidence P) :
    MetalloproteinActiveSiteClosed P := by
  exact And.intro E.coordinationGeometryClosed
    (And.intro E.metalLigandBindingClosed
      (And.intro E.redoxPotentialClosed E.catalyticMechanismClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse