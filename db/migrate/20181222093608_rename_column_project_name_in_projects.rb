class RenameColumnProjectNameInProjects < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :projectName, :project_name
  end
end
