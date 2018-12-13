FactoryBot.define do
    factory :project do
      user_profile
      project_name { Faker::App.name }
      created_by   { Faker::App.author }
      skills       { Faker::Job.key_skill }
      image_url    { Faker::Internet.url }
    end
  end
  