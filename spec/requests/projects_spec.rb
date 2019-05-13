# require "rails_helper"

# describe "Projects API" do

#   def project_json(p, full: false)
#     includes = {except: [:created_at, :updated_at]}

#     if !full
#       includes[:only] = [:id, :project_name, :created_by, :technologies]
#     end

#     p.as_json(includes).stringify_keys
#   end

#   context "#index" do
#     let!(:projects) { create_list :project, 3 }
#     let(:expected_projects) { projects.map{|p| project_json(p) }}

#     it "return projects" do
#       get api_projects_path

#       expect(json).to have_key('projects')
#       expect(json['projects'].count).to eq 3
#       expect(json['projects']).to match_array expected_projects
#     end
#   end

#   context "#show" do
#     let(:project) { create :project }

#     it "return project" do
#       get api_project_path(project)

#       expect(json).to have_key('project')
#       expect(json['project']).to eq project_json(project, full: true)
#     end
#   end
# end
