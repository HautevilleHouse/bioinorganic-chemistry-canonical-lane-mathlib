import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

def ConstrainedBioinorganicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_bioinorganic_endgame (A : AdmissibleClass) :
    ConstrainedBioinorganicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse