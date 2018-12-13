require 'rails_helper'

describe Project do
  let(:project) { build_stubbed :project }

  it "is valid" do
    expect(project).to be_valid
  end
end
