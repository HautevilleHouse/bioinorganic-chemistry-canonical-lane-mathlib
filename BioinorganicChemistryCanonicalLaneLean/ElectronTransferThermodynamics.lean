import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ElectronTransferThermodynamicsPackage (A : AdmissibleClass) where
  marcusTheory : Prop
  reorganizationEnergy : Prop
  drivingForce : Prop
  electronTunneling : Prop

structure ElectronTransferThermodynamicsEvidence {A : AdmissibleClass} (P : ElectronTransferThermodynamicsPackage A) where
  marcusTheoryClosed : P.marcusTheory
  reorganizationEnergyClosed : P.reorganizationEnergy
  drivingForceClosed : P.drivingForce
  electronTunnelingClosed : P.electronTunneling

def ElectronTransferThermodynamicsClosed {A : AdmissibleClass} (P : ElectronTransferThermodynamicsPackage A) : Prop :=
  P.marcusTheory ∧ P.reorganizationEnergy ∧ P.drivingForce ∧ P.electronTunneling

theorem electron_transfer_thermodynamics_closed_from_evidence
    {A : AdmissibleClass} (P : ElectronTransferThermodynamicsPackage A) (E : ElectronTransferThermodynamicsEvidence P) :
    ElectronTransferThermodynamicsClosed P := by
  exact And.intro E.marcusTheoryClosed
    (And.intro E.reorganizationEnergyClosed
      (And.intro E.drivingForceClosed E.electronTunnelingClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse