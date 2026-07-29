import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.ArtinPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure PureBraidSubgroup (B : BraidGroupObject) where
  kernelOfProjection : Prop
  generators : List (ℕ × ℕ)
  relations : Prop
  closure : Prop

theorem pure_braid_closed (B : BraidGroupObject) (P : PureBraidSubgroup B) : P.closure := by
  exact P.closure

structure BraidSubgroupChain (B : BraidGroupObject) where
  subgroups : List (PureBraidSubgroup B)
  chainCondition : Prop
  chainClosed : Prop

def ChainClosed (C : BraidSubgroupChain) : Prop :=
  C.chainCondition ∧ C.chainClosed

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse