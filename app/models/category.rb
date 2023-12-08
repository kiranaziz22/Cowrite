class Category < ApplicationRecord
  has_many :stories
  has_one_attached :photo

  def to_label
    "#{self.genre}"
  end
end
