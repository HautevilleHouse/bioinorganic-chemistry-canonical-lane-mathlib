import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure BioinorganicSystem where
  metalCenter : String
  ligandSet : List String
  coordinationGeometry : String
  redoxActive : Prop
  catalyticFunction : Prop

structure BioinorganicAdmittedObject where
  system : BioinorganicSystem
  systemWellDefined : Prop
  redoxActiveClosed : system.redoxActive
  catalyticFunctionClosed : system.catalyticFunction
  conclusion : systemWellDefined ∧ redoxActiveClosed ∧ catalyticFunctionClosed

def BioinorganicWitnessClosed (O : BioinorganicAdmittedObject) : Prop :=
  O.conclusion

structure AdmissibleClass where
  object : BioinorganicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BioinorganicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse