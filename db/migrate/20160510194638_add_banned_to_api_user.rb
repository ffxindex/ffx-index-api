class AddBannedToApiUser < ActiveRecord::Migration[5.0]
  def change
    add_column :api_users, :banned, :boolean, default: false
  end
end
