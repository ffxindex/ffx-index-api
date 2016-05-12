class RenameAbilityDropsType < ActiveRecord::Migration[5.0]
  def change
    remove_column :monster_drop_abilities, :type
    add_column :monster_drop_abilities, :ability_type, :integer
  end
end
