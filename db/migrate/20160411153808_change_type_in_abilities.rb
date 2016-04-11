class ChangeTypeInAbilities < ActiveRecord::Migration[5.0]
  def change
    rename_column :abilities, :type, :ability_type
  end
end
