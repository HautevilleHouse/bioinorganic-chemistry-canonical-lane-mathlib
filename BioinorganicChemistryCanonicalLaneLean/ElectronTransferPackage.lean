import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.LigandBindingThermodynamicsPackage

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ElectronTransferPackage {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} {T : LigandBindingThermodynamicsPackage K} where
  redoxPotential : Type u
  marcusReorganizationEnergy : Prop
  electronTransferRate : Prop
  innerSphereMechanism : Prop
  outerSphereMechanism : Prop

structure ElectronTransferEvidence {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} {T : LigandBindingThermodynamicsPackage K}
    (E : ElectronTransferPackage T) where
  marcusReorganizationEnergyClosed : E.marcusReorganizationEnergy
  electronTransferRateClosed : E.electronTransferRate
  innerSphereMechanismClosed : E.innerSphereMechanism
  outerSphereMechanismClosed : E.outerSphereMechanism

def ElectronTransferClosed {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} {T : LigandBindingThermodynamicsPackage K}
    (E : ElectronTransferPackage T) : Prop :=
  E.marcusReorganizationEnergy ∧ E.electronTransferRate ∧
  E.innerSphereMechanism ∧ E.outerSphereMechanism

theorem electron_transfer_closed_from_evidence
    {M : MetalComplexStructuralPackage} {K : ReactionKineticsPackage M}
    {T : LigandBindingThermodynamicsPackage K} (E : ElectronTransferPackage T)
    (Ev : ElectronTransferEvidence E) : ElectronTransferClosed E := by
  exact And.intro Ev.marcusReorganizationEnergyClosed
    (And.intro Ev.electronTransferRateClosed
      (And.intro Ev.innerSphereMechanismClosed Ev.outerSphereMechanismClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse