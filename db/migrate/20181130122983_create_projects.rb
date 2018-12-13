class CreateProjects < ActiveRecord::Migration[5.2]
    def change
      create_table :projects do |t|
        t.string :projectName
        t.string :created_by
        t.string :skills
        t.string :imageUrl
        t.timestamps
      end
    end
  end
  