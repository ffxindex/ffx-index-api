class CreateKillDrops < ActiveRecord::Migration[5.0]
  def change
    create_table :kill_drops do |t|
      t.references :monster, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :amount
      t.boolean :rare, default: :false

      t.timestamps
    end
  end
end
