import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidGroup (n : ℕ) where
  generators : Fin (n-1) → Type u
  relations : ∀ (i : Fin (n-2)), generators (⟨i.val, by omega⟩ : Fin (n-1)) ⋆ generators (⟨i.val+1, by omega⟩ : Fin (n-1)) ⋆ generators (⟨i.val, by omega⟩ : Fin (n-1)) = generators (⟨i.val+1, by omega⟩ : Fin (n-1)) ⋆ generators (⟨i.val, by omega⟩ : Fin (n-1)) ⋆ generators (⟨i.val+1, by omega⟩ : Fin (n-1))
  far_comm : ∀ (i j : Fin (n-1)), (i.val+1 < j.val) → generators i ⋆ generators j = generators j ⋆ generators i

def BraidGroupPresented (n : ℕ) : Prop :=
  ∀ (G : BraidGroup n), True

end BraigeItems
end HautevilleHouse