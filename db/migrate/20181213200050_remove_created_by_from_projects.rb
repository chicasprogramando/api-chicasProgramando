class RemoveCreatedByFromProjects < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :created_by, :string
  end
end
