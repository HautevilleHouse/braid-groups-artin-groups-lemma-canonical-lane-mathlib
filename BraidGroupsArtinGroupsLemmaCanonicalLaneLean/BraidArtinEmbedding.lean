import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidArtinEmbedding (n : ℕ) where
  braidGroup : BraidGroupPresentation n
  artinGroup : ArtinGroupPresentation n
  embeddingMap : Prop
  injectivity : Prop
  surjectivity : Prop

structure BraidArtinEmbeddingEvidence (n : ℕ) (E : BraidArtinEmbedding n) where
  embeddingMapClosed : E.embeddingMap
  injectivityClosed : E.injectivity
  surjectivityClosed : E.surjectivity

def BraidArtinEmbeddingClosed (n : ℕ) (E : BraidArtinEmbedding n) : Prop :=
  E.embeddingMap ∧ E.injectivity ∧ E.surjectivity

theorem braid_artin_embedding_closed_from_evidence (n : ℕ) (E : BraidArtinEmbedding n) (Ev : BraidArtinEmbeddingEvidence n E) :
    BraidArtinEmbeddingClosed n E := by
  exact And.intro Ev.embeddingMapClosed (And.intro Ev.injectivityClosed Ev.surjectivityClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse