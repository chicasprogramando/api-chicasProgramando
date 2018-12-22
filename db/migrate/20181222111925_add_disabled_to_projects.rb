class AddDisabledToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :disabled, :boolean, :default => false
  end
end
