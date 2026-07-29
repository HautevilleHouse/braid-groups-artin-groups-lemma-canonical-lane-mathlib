import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidGroupWordProblem {B : BraidGroupPresentation} where
  wordReductionAlgorithm : Prop
  normalFormUnique : Prop
  solutionExists : Prop

structure BraidGroupWordProblemEvidence {B : BraidGroupPresentation}
    (W : BraidGroupWordProblem) where
  wordReductionAlgorithmClosed : W.wordReductionAlgorithm
  normalFormUniqueClosed : W.normalFormUnique
  solutionExistsClosed : W.solutionExists

def BraidGroupWordProblemClosed {B : BraidGroupPresentation}
    (W : BraidGroupWordProblem) : Prop :=
  W.wordReductionAlgorithm ∧ W.normalFormUnique ∧ W.solutionExists

theorem braid_group_word_problem_closed_from_evidence {B : BraidGroupPresentation}
    (W : BraidGroupWordProblem) (E : BraidGroupWordProblemEvidence W) :
    BraidGroupWordProblemClosed W := by
  exact And.intro E.wordReductionAlgorithmClosed
    (And.intro E.normalFormUniqueClosed E.solutionExistsClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse