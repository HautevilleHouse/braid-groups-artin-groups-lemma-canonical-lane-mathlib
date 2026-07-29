import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure CoxeterMatrix (n : ℕ) where
  mat : Matrix (Fin n) (Fin n) ℕ
  diagonal_one : ∀ i, mat i i = 1
  symmetric : ∀ i j, mat i j = mat j i

structure ArtinGroup (n : ℕ) (M : CoxeterMatrix n) where
  generators : Fin n → Type u
  braid_relations : ∀ (i j : Fin n), i ≠ j → (generators i ⋆ generators j) ^ (M.mat i j) = (generators j ⋆ generators i) ^ (M.mat i j)

def ArtinGroupPresented (n : ℕ) (M : CoxeterMatrix n) : Prop :=
  ∀ (G : ArtinGroup n M), True

end HautevilleHouse
end HautevilleHouse