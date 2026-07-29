import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidGenerator (n : ℕ) where
  index : Fin (n-1)

def braidGroup (n : ℕ) : Type := FreeGroup (BraidGenerator n)

structure BraidGroupPresentation (n : ℕ) where
  generators : List (BraidGenerator n)
  relations : List (braidGroup n → braidGroup n → Prop)
  relation₁ : ∀ (i : Fin (n-2)), (braidGroup n).of (BraidGenerator.mk i) * (braidGroup n).of (BraidGenerator.mk (i.succ)) * (braidGroup n).of (BraidGenerator.mk i) = (braidGroup n).of (BraidGenerator.mk (i.succ)) * (braidGroup n).of (BraidGenerator.mk i) * (braidGroup n).of (BraidGenerator.mk (i.succ))
  relation₂ : ∀ (i j : Fin (n-1)), |(i.val : ℤ) - (j.val : ℤ)| > 1 → (braidGroup n).of (BraidGenerator.mk i) * (braidGroup n).of (BraidGenerator.mk j) = (braidGroup n).of (BraidGenerator.mk j) * (braidGroup n).of (BraidGenerator.mk i)

theorem braid_relation_satisfied (n : ℕ) (P : BraidGroupPresentation n) : P.relation₁ ∧ P.relation₂ :=
  ⟨P.relation₁, P.relation₂⟩

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse