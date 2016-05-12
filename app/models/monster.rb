class Monster < ApplicationRecord
  belongs_to :location
  has_many :kill_drops
  has_many :steal_drops

  # This references the weapons and armour
  has_many :monster_drop_abilities

  has_one :bribe_drop
  has_one :element
  
  before_save :generate_slug

end
