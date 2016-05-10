require 'rails_helper'

RSpec.describe ApplicationRecord, type: :model do
  describe 'find_by_id_or_slug' do
    it 'finds by ID' do
      monster = Monster.find_by_id_or_slug(1)
      expect(monster.name).to eq(Monster.first.name)
    end

    it 'finds by slug' do
      monster = Monster.find_by_id_or_slug(Monster.first.slug)
      expect(monster.name).to eq(Monster.first.name)
    end
  end
end
