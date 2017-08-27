class RemovePreviewFromProfiles < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :preview, :string
  end
end
