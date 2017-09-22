class Artwork < ApplicationRecord
  has_attached_file :attachment
  do_not_validate_attachment_file_type :attachment

  acts_as_votable

  belongs_to :medium
  belongs_to :user
end
