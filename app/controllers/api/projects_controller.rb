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

    def create
      project = Project.new(permited_params)

      if project.save
        render json: project, status: :created 
      else
        render json: {
          errors: project.errors
        }, status: :unprocessable_entity
      end
    end

    private
  
    def permited_params
      params.require(:project).permit(:project_name, :technologies, :image_url, :description)
    end
  end


  #{ project: { project_name: "name", techonologies: "Rails", image_url: "", description } }
  