ActiveAdmin.register User do

  permit_params :name, :title, :image, :role_name, :search_project, :senority, :skills, :about_me, :email, :password, :password_confirmation, :linkedin, :github, :twitter

  form title: 'A custom title' do |f|
    inputs 'Details' do
      input :name
      input :title
      input :image
      input :role_name
      input :search_project
      input :senority
      input :skills
      input :about_me
      input :email
      input :password
      input :password_confirmation
    end
    actions
  end

end
