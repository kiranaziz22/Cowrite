class Category < ApplicationRecord
  has_many :stories

  def to_label
    "#{self.genre}"
  end
end
