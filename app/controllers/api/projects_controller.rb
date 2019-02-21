class Api::ProjectsController < ApiController

  before_action :authenticate_api_user!, only: [:show]

    def index
      projects = Project.paginate page: params[:page], per_page: params[:per_page]
  
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
  