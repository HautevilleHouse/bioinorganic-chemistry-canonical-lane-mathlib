import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.MetalComplexStructuralPackage

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ReactionKineticsPackage {M : MetalComplexStructuralPackage} where
  rateConstant : Type u
  equilibriumConstant : Type v
  rateLawEstablished : Prop
  equilibriumReached : Prop
  mechanismDetermined : Prop

structure ReactionKineticsEvidence {M : MetalComplexStructuralPackage}
    (K : ReactionKineticsPackage M) where
  rateLawEstablishedClosed : K.rateLawEstablished
  equilibriumReachedClosed : K.equilibriumReached
  mechanismDeterminedClosed : K.mechanismDetermined

def ReactionKineticsClosed {M : MetalComplexStructuralPackage}
    (K : ReactionKineticsPackage M) : Prop :=
  K.rateLawEstablished ∧ K.equilibriumReached ∧ K.mechanismDetermined

theorem reaction_kinetics_closed_from_evidence
    {M : MetalComplexStructuralPackage} (K : ReactionKineticsPackage M)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateLawEstablishedClosed
    (And.intro E.equilibriumReachedClosed E.mechanismDeterminedClosed)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse