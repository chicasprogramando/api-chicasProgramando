require 'rails_helper'

describe Api::ProjectsController do

  context "#index" do
    let(:projects) { create_list :project, 3 }

    it "respond ok" do
      get :index

      expect(response).to be_successful
    end
  end

  context "#show" do
    let(:project) { create :project }

    it "respond ok" do
      get :show, params: { id: project.id }

      expect(response).to be_successful
    end
  end
end
