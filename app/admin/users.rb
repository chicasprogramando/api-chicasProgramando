ActiveAdmin.register User do

  permit_params :name, :title, :image, :role_name, :search_project, :senority, :skills, :about_me, :linkedin, :github, :twitter

end
