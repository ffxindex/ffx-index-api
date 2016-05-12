class Mix < ApplicationRecord
  has_many :mix_items

  before_save :generate_slug
end
