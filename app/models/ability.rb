class Ability < ApplicationRecord
  belongs_to :item

  before_save :generate_slug
end
