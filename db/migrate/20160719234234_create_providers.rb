class CreateProviders < ActiveRecord::Migration[5.0]
  def change
    create_table :providers do |t|
      t.integer :version_id
      t.string :name
      t.column :box, :oid, null: false

      t.timestamps
    end
  end
end
