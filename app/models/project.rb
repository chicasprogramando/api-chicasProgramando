class Project < ApplicationRecord
    belongs_to :user_profile
    validates :project_name, :created_by, :skills, :image_url, presence: true
  
    scope :not_disabled, -> { where(disabled: false) }
  
  end
  
  # == Schema Information
  #
  # Table name: projects
  #
  #  id              :integer          not null, primary key
  #  created_by      :string
  #  description     :text
  #  disabled        :boolean          default(FALSE)
  #  image_url       :string
  #  open            :boolean          default(FALSE)
  #  project_name    :string
  #  skills          :string
  #  url             :string
  #  created_at      :datetime         not null
  #  updated_at      :datetime         not null
  #  user_profile_id :integer
  #
  