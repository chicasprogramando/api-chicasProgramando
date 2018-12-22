class ChangesSkillsInProjects < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :skills, :technologies
  end
end
