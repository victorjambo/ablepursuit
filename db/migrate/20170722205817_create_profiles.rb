class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :url
      t.text :content
      t.string :preview

      t.timestamps
    end
  end
end
