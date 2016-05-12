class CreateMixItems < ActiveRecord::Migration[5.0]
  def change
    create_table :mix_items do |t|
      t.references :mix, foreign_key: true
      t.integer :item_one_id, index: true, foreign_key: true
      t.integer :item_two_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
