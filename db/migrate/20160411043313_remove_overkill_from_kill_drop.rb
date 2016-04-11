class RemoveOverkillFromKillDrop < ActiveRecord::Migration[5.0]
  def change
    remove_column :kill_drops, :overkill
  end
end
