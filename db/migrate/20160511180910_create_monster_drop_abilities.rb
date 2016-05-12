class CreateMonsterDropAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :monster_drop_abilities do |t|
      t.references :monster, foreign_key: true
      t.references :ability, foreign_key: true
      t.integer :type

      t.timestamps
    end
  end
end
