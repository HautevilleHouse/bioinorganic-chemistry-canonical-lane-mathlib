import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  mechanismStep : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateLawClosed : K.rateLaw
  activationEnergyClosed : K.activationEnergy
  preExponentialFactorClosed : K.preExponentialFactor
  mechanismStepClosed : K.mechanismStep

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateLaw ∧ K.activationEnergy ∧ K.preExponentialFactor ∧ K.mechanismStep

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateLawClosed
    (And.intro E.activationEnergyClosed
      (And.intro E.preExponentialFactorClosed E.mechanismStepClosed))

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse