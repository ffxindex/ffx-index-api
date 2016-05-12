class AddSlugToMix < ActiveRecord::Migration[5.0]
  def change
    add_column :mixes, :slug, :string
  end
end
