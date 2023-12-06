class Collab < ApplicationRecord
  belongs_to :user
  belongs_to :story
  has_many_attached :photos
  has_rich_text :rich_content
end
