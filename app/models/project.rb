class Project < ApplicationRecord
    belongs_to :user
    validates :project_name, :technologies, :image_url, :description, presence: true
  
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
  