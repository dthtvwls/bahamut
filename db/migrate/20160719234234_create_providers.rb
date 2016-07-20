class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.integer :version_id
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
