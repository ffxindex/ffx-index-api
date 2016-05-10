class CreateApiRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :api_requests do |t|
      t.references :api_user, foreign_key: true
      t.string :ip

      t.timestamps
    end
  end
end
