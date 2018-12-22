class RenameColumnImageUrlInProjects < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :imageUrl, :image_url
  end
end
