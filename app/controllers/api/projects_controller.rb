class Api::ProjectsController < ApplicationController

    def index
      projects = Project.not_disabled.all
  
      render json: {
        projects: projects.as_json(only: [:id, :project_name, :created_by, :skills, :open])
      }
    end
  
    def show
      project = Project.find(params[:id])
  
      render json: {
        project: project.as_json(except: [:created_at, :updated_at])
      }
    end
  
  end
  