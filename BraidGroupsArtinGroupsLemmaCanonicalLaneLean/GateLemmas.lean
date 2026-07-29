import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse