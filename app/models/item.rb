class Item < ApplicationRecord
  has_many :abilities
  has_many :kill_drops
  has_many :steal_drops
  has_many :bribe_drops

  before_save :generate_slug

  def get_mixes
    MixItem.select('distinct on (mix_id) *').where('item_one_id= ? OR item_two_id= ?', self.id, self.id)
  end
end
