import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroups

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure ArtinGroupPackage {B : BraidGroupPackage} where
  coxeterMatrix : Type u
  artinGenerators : List (Nat × Nat)
  artinRelations : Prop
  torsionFree : Prop
  solutionWordProblem : Prop

structure ArtinGroupEvidence {B : BraidGroupPackage} (A : ArtinGroupPackage B) where
  artinRelationsClosed : A.artinRelations
  torsionFreeClosed : A.torsionFree
  solutionWordProblemClosed : A.solutionWordProblem

def ArtinGroupClosed {B : BraidGroupPackage} (A : ArtinGroupPackage B) : Prop :=
  A.artinRelations ∧ A.torsionFree ∧ A.solutionWordProblem

theorem artin_group_closed_from_evidence {B : BraidGroupPackage} (A : ArtinGroupPackage B) (E : ArtinGroupEvidence A) :
    ArtinGroupClosed A := by
  exact And.intro E.artinRelationsClosed (And.intro E.torsionFreeClosed E.solutionWordProblemClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse