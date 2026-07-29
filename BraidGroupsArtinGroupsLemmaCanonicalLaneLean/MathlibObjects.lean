import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure BraidSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BraidAdmittedObject where
  space : BraidSpace
  braidGroupDefined : Prop
  artinPresentation : Prop
  braidRelationSatisfied : Prop
  conclusion : braidRelationSatisfied

structure BraidEndgameState where
  object : BraidAdmittedObject

def BraidWitnessClosed (O : BraidAdmittedObject) : Prop :=
  O.braidRelationSatisfied

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse
