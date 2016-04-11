class AddTypeToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :effect_type, :string
  end
end
