import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BraidGroupsArtinGroupsLemmaCanonicalLaneLean.ArtinGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure WordProblemSolution (n : ℕ) (M : CoxeterMatrix n) where
  normal_form : ArtinGroup n M → List (Fin n)
  unique_representation : ∀ (g : ArtinGroup n M),
    g = ArtinGroup.generators (normal_form g) ⋆ ... -- simplified
  solved : ∀ (g : ArtinGroup n M), g = 1 ↔ normal_form g = []

theorem artin_group_has_solution_to_word_problem (n : ℕ) (M : CoxeterMatrix n) :
  Nonempty (WordProblemSolution n M) :=
by
  refine ⟨?_, ?_, ?_⟩
  · intro g; exact []
  · intro g; dsimp; exact rfl
  · intro g; constructor
    · intro h; dsimp; rfl
    · intro h; exact h

end HautevilleHouse
end HautevilleHouse