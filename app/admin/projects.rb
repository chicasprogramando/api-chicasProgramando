ActiveAdmin.register Project do
  permit_params :project_name, :user, :technologies, :image_url, :description, :url, :disabled, :open
end