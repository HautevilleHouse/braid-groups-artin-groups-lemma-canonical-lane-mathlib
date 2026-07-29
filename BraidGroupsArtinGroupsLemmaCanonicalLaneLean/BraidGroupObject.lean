import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidGroupObject where
  n : ℕ
  presentation : Prop
  generators : List (ℕ × ℕ)
  relationsSatisfied : Prop
  conclusion : relationsSatisfied

def BraidGroupClosed (B : BraidGroupObject) : Prop :=
  B.relationsSatisfied

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse