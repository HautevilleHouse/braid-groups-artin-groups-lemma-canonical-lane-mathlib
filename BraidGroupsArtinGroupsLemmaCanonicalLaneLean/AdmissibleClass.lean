import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BraidGroupObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BraidGroupClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse