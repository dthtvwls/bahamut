class CreateVersions < ActiveRecord::Migration[5.0]
  def change
    create_table :versions do |t|
      t.integer :box_id
      t.string :version
      t.text :description_html
      t.text :description_markdown

      t.timestamps
    end
  end
end
