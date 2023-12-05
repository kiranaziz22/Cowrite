class Collab < ApplicationRecord
  belongs_to :user
  belongs_to :story
  has_many_attached :photos
end
