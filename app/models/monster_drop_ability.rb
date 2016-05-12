class MonsterDropAbility < ApplicationRecord
  enum ability_type: %w(weapon armour)

  belongs_to :monster
  belongs_to :ability
end
