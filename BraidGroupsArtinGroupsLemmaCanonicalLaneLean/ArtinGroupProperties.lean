import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure ArtinGroupProperties {n : Nat} (B : BraidGroupPresentation n) where
  coxeterMatrixType : Prop
  torsionFree : Prop
  solutionWordProblem : Prop
  k(pi,1)Conjecture : Prop

def ArtinGroupPropertiesClosed {n : Nat} {B : BraidGroupPresentation n} (A : ArtinGroupProperties B) : Prop :=
  A.coxeterMatrixType ∧ A.torsionFree ∧ A.solutionWordProblem ∧ A.k(pi,1)Conjecture

structure ArtinGroupPropertiesEvidence {n : Nat} {B : BraidGroupPresentation n} (A : ArtinGroupProperties B) where
  coxeterMatrixTypeClosed : A.coxeterMatrixType
  torsionFreeClosed : A.torsionFree
  solutionWordProblemClosed : A.solutionWordProblem
  k(pi,1)ConjectureClosed : A.k(pi,1)Conjecture

theorem artin_group_properties_closed_from_evidence {n : Nat} {B : BraidGroupPresentation n}
    (A : ArtinGroupProperties B) (E : ArtinGroupPropertiesEvidence A) : ArtinGroupPropertiesClosed A := by
  exact And.intro E.coxeterMatrixTypeClosed (And.intro E.torsionFreeClosed (And.intro E.solutionWordProblemClosed E.k(pi,1)ConjectureClosed))

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse