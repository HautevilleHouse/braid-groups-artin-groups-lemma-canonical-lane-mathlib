import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupCohomology

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure TsyganFormality {n : Nat} {B : BraidGroupPresentation n}
    {A : ArtinGroupProperties B} {C : BraidGroupCohomology A} where
  hochschildHomology : Prop
  formalityMorphism : Prop
  proofKontsevich : Prop
  characteristicZero : Prop

def TsyganFormalityClosed {n : Nat} {B : BraidGroupPresentation n}
    {A : ArtinGroupProperties B} {C : BraidGroupCohomology A} (T : TsyganFormality C) : Prop :=
  T.hochschildHomology ∧ T.formalityMorphism ∧ T.proofKontsevich ∧ T.characteristicZero

structure TsyganFormalityEvidence {n : Nat} {B : BraidGroupPresentation n}
    {A : ArtinGroupProperties B} {C : BraidGroupCohomology A} (T : TsyganFormality C) where
  hochschildHomologyClosed : T.hochschildHomology
  formalityMorphismClosed : T.formalityMorphism
  proofKontsevichClosed : T.proofKontsevich
  characteristicZeroClosed : T.characteristicZero

theorem tsygan_formality_closed_from_evidence {n : Nat} {B : BraidGroupPresentation n}
    {A : ArtinGroupProperties B} {C : BraidGroupCohomology A} (T : TsyganFormality C)
    (E : TsyganFormalityEvidence T) : TsyganFormalityClosed T := by
  exact And.intro E.hochschildHomologyClosed (And.intro E.formalityMorphismClosed (And.intro E.proofKontsevichClosed E.characteristicZeroClosed))

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse