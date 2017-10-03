class AddTaglineToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :tagline, :string
  end
end
