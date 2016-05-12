class CreateElements < ActiveRecord::Migration[5.0]
  def change
    create_table :elements do |t|
      t.references :monster, foreign_key: true
      t.float :fire
      t.float :thunder
      t.float :ice
      t.float :water

      t.timestamps
    end
  end
end
