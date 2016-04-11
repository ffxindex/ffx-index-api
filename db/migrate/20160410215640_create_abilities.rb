class CreateAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :type
      t.references :item, foreign_key: true
      t.integer :item_amount

      t.timestamps
    end
  end
end
