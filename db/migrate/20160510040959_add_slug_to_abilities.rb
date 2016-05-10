class AddSlugToAbilities < ActiveRecord::Migration[5.0]
  def change
    add_column :abilities, :slug, :string
  end
end
