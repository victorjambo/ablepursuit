class AddUserToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :user_id, :interger
  end
end
