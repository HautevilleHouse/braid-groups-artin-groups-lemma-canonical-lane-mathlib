import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.ArtinGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure ArtinGroupTitsCone {A : ArtinGroupPresentation} where
  coneDefined : Prop
  groupActionOnCone : Prop
  fundamentalDomain : Prop
  faithfulActionOnCone : Prop

structure ArtinGroupTitsConeEvidence {A : ArtinGroupPresentation}
    (T : ArtinGroupTitsCone) where
  coneDefinedClosed : T.coneDefined
  groupActionOnConeClosed : T.groupActionOnCone
  fundamentalDomainClosed : T.fundamentalDomain
  faithfulActionOnConeClosed : T.faithfulActionOnCone

def ArtinGroupTitsConeClosed {A : ArtinGroupPresentation}
    (T : ArtinGroupTitsCone) : Prop :=
  T.coneDefined ∧ T.groupActionOnCone ∧ T.fundamentalDomain ∧ T.faithfulActionOnCone

theorem artin_group_tits_cone_closed_from_evidence {A : ArtinGroupPresentation}
    (T : ArtinGroupTitsCone) (E : ArtinGroupTitsConeEvidence T) :
    ArtinGroupTitsConeClosed T := by
  exact And.intro E.coneDefinedClosed
    (And.intro E.groupActionOnConeClosed
      (And.intro E.fundamentalDomainClosed E.faithfulActionOnConeClosed))

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse