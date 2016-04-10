class CreateStealDrops < ActiveRecord::Migration[5.0]
  def change
    create_table :steal_drops do |t|
      t.references :monster, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :amount
      t.boolean :rare

      t.timestamps
    end
  end
end
