class CreateApiUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :api_users do |t|
      t.string :api_key
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
