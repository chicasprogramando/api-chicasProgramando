class Api::ProjectsController < ApiController

    def index
      projects = Project.not_disabled.all
  
      render json: {
        projects: projects.as_json(only: [:id, :project_name, :user, :technologies, :image_url, :description, :disabled, :open])
      }
    end
  
    def show
      project = Project.find(params[:id])
  
      render json: {
        project: project.as_json(except: [:created_at, :updated_at])
      }
    end
  
  end
  