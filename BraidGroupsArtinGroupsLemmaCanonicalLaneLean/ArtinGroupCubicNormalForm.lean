import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.ArtinGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure ArtinGroupCubicNormalForm {A : ArtinGroupPresentation} where
  normalFormDefined : Prop
  wordReductionTerminates : Prop
  solutionToWordProblem : Prop

structure ArtinGroupCubicNormalFormEvidence {A : ArtinGroupPresentation}
    (C : ArtinGroupCubicNormalForm) where
  normalFormDefinedClosed : C.normalFormDefined
  wordReductionTerminatesClosed : C.wordReductionTerminates
  solutionToWordProblemClosed : C.solutionToWordProblem

def ArtinGroupCubicNormalFormClosed {A : ArtinGroupPresentation}
    (C : ArtinGroupCubicNormalForm) : Prop :=
  C.normalFormDefined ∧ C.wordReductionTerminates ∧ C.solutionToWordProblem

theorem artin_group_cubic_normal_form_closed_from_evidence {A : ArtinGroupPresentation}
    (C : ArtinGroupCubicNormalForm) (E : ArtinGroupCubicNormalFormEvidence C) :
    ArtinGroupCubicNormalFormClosed C := by
  exact And.intro E.normalFormDefinedClosed
    (And.intro E.wordReductionTerminatesClosed E.solutionToWordProblemClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse