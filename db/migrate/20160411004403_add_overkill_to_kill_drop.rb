class AddOverkillToKillDrop < ActiveRecord::Migration[5.0]
  def change
    add_column :kill_drops, :overkill, :integer
  end
end
