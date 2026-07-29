import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupObject

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BraidGroupClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse