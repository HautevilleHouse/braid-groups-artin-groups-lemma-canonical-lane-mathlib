import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

def ConstrainedBraidGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_braid_group_endgame (A : AdmissibleClass) : ConstrainedBraidGroupClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse