class CreateBribeDrops < ActiveRecord::Migration[5.0]
  def change
    create_table :bribe_drops do |t|
      t.references :monster, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :amount
      t.integer :cost

      t.timestamps
    end
  end
end
