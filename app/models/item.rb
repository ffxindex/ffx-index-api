class Item < ApplicationRecord
  has_many :abilities
  has_many :kill_drops
  has_many :steal_drops
  has_many :bribe_drops

  before_save :generate_slug
end
