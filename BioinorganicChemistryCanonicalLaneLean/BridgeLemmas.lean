import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.BioinorganicAdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BioinorganicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse