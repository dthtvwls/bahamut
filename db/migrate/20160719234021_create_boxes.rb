class CreateBoxes < ActiveRecord::Migration[5.0]
  def change
    create_table :boxes do |t|
      t.integer :user_id
      t.text :description
      t.string :short_description
      t.string :name

      t.timestamps
    end
  end
end
