class AddIndusrtyToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :industry, :string
  end
end
