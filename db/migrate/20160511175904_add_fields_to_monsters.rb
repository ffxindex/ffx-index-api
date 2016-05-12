class AddFieldsToMonsters < ActiveRecord::Migration[5.0]
  def change
    add_column :monsters, :health, :integer
    add_column :monsters, :overkill, :integer
    add_column :monsters, :strength, :integer
    add_column :monsters, :defense, :integer
    add_column :monsters, :magic, :integer
    add_column :monsters, :magic_defense, :integer
    add_column :monsters, :mp, :integer
    add_column :monsters, :agility, :integer
    add_column :monsters, :luck, :integer
    add_column :monsters, :ap, :integer
    add_column :monsters, :evasion, :integer
    add_column :monsters, :accuracy, :integer
    add_column :monsters, :gil, :integer
    add_column :monsters, :boss, :boolean
    add_column :monsters, :notes, :string
    add_column :monsters, :skills, :string
  end
end
