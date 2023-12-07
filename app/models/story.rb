class Story < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many_attached :photos
  has_rich_text :rich_content
  has_many :collabs
  acts_as_votable
end
