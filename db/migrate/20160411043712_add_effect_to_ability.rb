class AddEffectToAbility < ActiveRecord::Migration[5.0]
  def change
    add_column :abilities, :effect, :string
  end
end
