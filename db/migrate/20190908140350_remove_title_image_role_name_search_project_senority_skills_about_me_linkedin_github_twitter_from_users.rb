class RemoveTitleImageRoleNameSearchProjectSenoritySkillsAboutMeLinkedinGithubTwitterFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :title, :string
    remove_column :users, :image, :string
    remove_column :users, :role_name, :string
    remove_column :users, :search_project, :boolean
    remove_column :users, :senority, :string
    remove_column :users, :skills, :string
    remove_column :users, :about_me, :text
    remove_column :users, :linkedin, :string
    remove_column :users, :github, :string
    remove_column :users, :twitter, :string
  end
end
