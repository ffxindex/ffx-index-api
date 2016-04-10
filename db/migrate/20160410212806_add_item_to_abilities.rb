class AddItemToAbilities < ActiveRecord::Migration[5.0]
  def change
    add_reference :abilities, :item, foreign_key: true
    add_column :abilities, :item_amount, :integer
  end
end
