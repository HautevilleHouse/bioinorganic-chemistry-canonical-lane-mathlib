import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure BioAdmittedObject where
  ligandField : Type
  metalCenter : Type
  coordinationComplex : Prop
  electronicStructure : Prop
  conclusion : electronicStructure

structure AdmissibleClass where
  object : BioAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BioWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse