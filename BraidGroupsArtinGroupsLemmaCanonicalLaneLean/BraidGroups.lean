import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure BraidGroupPackage where
  strandCount : Nat
  generators : List (Nat × Nat)
  braidRelations : Prop
  wordProblemSolvable : Prop
  linearRepresentationExists : Prop

structure BraidGroupEvidence (B : BraidGroupPackage) where
  braidRelationsClosed : B.braidRelations
  wordProblemSolvableClosed : B.wordProblemSolvable
  linearRepresentationExistsClosed : B.linearRepresentationExists

def BraidGroupClosed (B : BraidGroupPackage) : Prop :=
  B.braidRelations ∧ B.wordProblemSolvable ∧ B.linearRepresentationExists

theorem braid_group_closed_from_evidence (B : BraidGroupPackage) (E : BraidGroupEvidence B) :
    BraidGroupClosed B := by
  exact And.intro E.braidRelationsClosed (And.intro E.wordProblemSolvableClosed E.linearRepresentationExistsClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse