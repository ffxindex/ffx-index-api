class Monster < ApplicationRecord
  has_and_belongs_to_many :locations
  has_many :kill_drops
  has_many :steal_drops
  has_one :bribe_drop
end
