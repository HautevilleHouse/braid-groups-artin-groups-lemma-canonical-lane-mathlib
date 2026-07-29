import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure GarsideStructurePackage (B : BraidGroupPackage) where
  garsideElement : ℕ
  normalFormExists : Prop
  wordProblemSolved : Prop
  lcmExists : Prop

structure GarsideStructureEvidence (B : BraidGroupPackage) (G : GarsideStructurePackage B) where
  normalFormExistsClosed : G.normalFormExists
  wordProblemSolvedClosed : G.wordProblemSolved
  lcmExistsClosed : G.lcmExists

def GarsideStructureClosed (B : BraidGroupPackage) (G : GarsideStructurePackage B) : Prop :=
  G.normalFormExists ∧ G.wordProblemSolved ∧ G.lcmExists

theorem garside_structure_closed_from_evidence (B : BraidGroupPackage) (G : GarsideStructurePackage B) (E : GarsideStructureEvidence B G) :
    GarsideStructureClosed B G := by
  exact And.intro E.normalFormExistsClosed (And.intro E.wordProblemSolvedClosed E.lcmExistsClosed)

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse