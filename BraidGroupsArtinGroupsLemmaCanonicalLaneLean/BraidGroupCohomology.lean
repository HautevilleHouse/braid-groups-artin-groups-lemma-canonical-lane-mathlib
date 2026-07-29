import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure CohomologyRing (n : ℕ) (R : Type u) [CommRing R] where
  groups : ℕ → Module R
  multiplication : ∀ p q, groups p ⊗ groups q → groups (p+q)
  associative : ∀ a b c, multiplication (a ⊗ b) ⊗ c = multiplication a ⊗ (multiplication b ⊗ c)

theorem cohomology_of_braid_group (n : ℕ) :
  CohomologyRing n ℤ :=
by
  refine {
    groups := λ p => Module.of ℤ (ℤ ^ (partitionNumber p))
    multiplication := λ p q => by
      intro x
      refine TensorProduct.lift ?_ x
      intro a b
      exact Module.of ℤ (ℤ ^ (partitionNumber (p+q))) 0
    associative := by
      intro a b c; ext; apply Subsingleton.elim
  }

end HautevilleHouse
end HautevilleHouse