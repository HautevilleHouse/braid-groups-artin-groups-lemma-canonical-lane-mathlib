import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def braidProjection : Projection BraidEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem braid_projection_idempotent (x : BraidEndgameState) :
    braidProjection.toFun (braidProjection.toFun x) = braidProjection.toFun x := by
  exact braidProjection.idempotent x

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse
