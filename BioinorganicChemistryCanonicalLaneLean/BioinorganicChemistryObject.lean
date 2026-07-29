import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure MetalCenter where
  element : String
  oxidationState : Int
  coordinationNumber : Nat
  geometry : String -- e.g., "octahedral"

default instance : Inhabited MetalCenter where
  default := { element := "Fe", oxidationState := 2, coordinationNumber := 6, geometry := "octahedral" }

structure LigandField where
  splittingEnergy : Float
  spinState : String

structure BioinorganicChemistryAdmittedObject where
  metal : MetalCenter
  ligandField : LigandField
  reactionMechanism : String
  conclusion : Prop

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse