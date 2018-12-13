ActiveAdmin.register Project do
    permit_params :project_name, :created_by, :skills, :image_url, :description, :url, :disabled, :open
   end
   