import HautevilleHouse.BioinorganicChemistryCanonicalLaneLean.ReactionKineticsPackage

namespace HautevilleHouse
namespace BioinorganicChemistryCanonicalLaneLean

structure LigandBindingThermodynamicsPackage {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} where
  bindingAffinity : Type u
  freeEnergyChange : Type v
  enthalpyChange : Prop
  entropyChange : Prop
  bindingIsothermDerived : Prop

structure LigandBindingThermodynamicsEvidence {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} (T : LigandBindingThermodynamicsPackage K) where
  enthalpyChangeClosed : T.enthalpyChange
  entropyChangeClosed : T.entropyChange
  bindingIsothermDerivedClosed : T.bindingIsothermDerived

def LigandBindingThermodynamicsClosed {M : MetalComplexStructuralPackage}
    {K : ReactionKineticsPackage M} (T : LigandBindingThermodynamicsPackage K) : Prop :=
  T.enthalpyChange ∧ T.entropyChange ∧ T.bindingIsothermDerived

theorem ligand_binding_thermodynamics_closed_from_evidence
    {M : MetalComplexStructuralPackage} {K : ReactionKineticsPackage M}
    (T : LigandBindingThermodynamicsPackage K)
    (E : LigandBindingThermodynamicsEvidence T) : LigandBindingThermodynamicsClosed T := by
  exact And.intro E.enthalpyChangeClosed
    (And.intro E.entropyChangeClosed E.bindingIsothermDerivedClosed)

end BioinorganicChemistryCanonicalLaneLean
end HautevilleHouse