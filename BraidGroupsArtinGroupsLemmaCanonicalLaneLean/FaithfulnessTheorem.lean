import BraidGroupsArtinGroupsLemmaCanonicalLaneLean.BraidGroupPresentation

namespace HautevilleHouse
namespace BraidGroupsArtinGroupsLemmaCanonicalLaneLean

structure LawrenceKrammerRepresentation (B : BraidGroupPackage) where
  target : Type
  representation : B.generators → (target → target)
  isFaithful : Prop

structure FaithfulnessEvidence (B : BraidGroupPackage) (R : LawrenceKrammerRepresentation B) where
  representationWellDefined : Prop
  faithfulClosed : R.isFaithful

def FaithfulnessClosed (B : BraidGroupPackage) (R : LawrenceKrammerRepresentation B) : Prop :=
  R.isFaithful

theorem faithfulness_closed_from_evidence (B : BraidGroupPackage) (R : LawrenceKrammerRepresentation B) (E : FaithfulnessEvidence B R) :
    FaithfulnessClosed B R := by
  exact E.faithfulClosed

end BraidGroupsArtinGroupsLemmaCanonicalLaneLean
end HautevilleHouse