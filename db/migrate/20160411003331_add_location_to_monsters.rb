class AddLocationToMonsters < ActiveRecord::Migration[5.0]
  def change
    add_reference :monsters, :location, foreign_key: true
  end
end
