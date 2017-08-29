class Artwork < ApplicationRecord
  has_attached_file :attachment
  belongs_to :type
  belongs_to :topic
  belongs_to :medium
end
