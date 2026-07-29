import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidArtinSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BraidArtinAdmittedObject where
  space : BraidArtinSpace
  braidGroupDefined : Prop
  artinGroupDefined : Prop
  pureBraidGroupDefined : Prop
  braidRelationHolds : Prop
  conclusion : braidRelationHolds

structure BraidArtinEndgameState where
  object : BraidArtinAdmittedObject

def BraidArtinWitnessClosed (O : BraidArtinAdmittedObject) : Prop :=
  O.braidRelationHolds

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse
