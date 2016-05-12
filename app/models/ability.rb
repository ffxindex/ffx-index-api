class Ability < ApplicationRecord
  belongs_to :item
  has_many :monster_drop_abilities

  before_save :generate_slug
end
