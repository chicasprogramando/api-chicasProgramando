class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :title
      t.string :image
      t.string :role_name
      t.boolean :search_project
      t.string :senority
      t.string :skills
      t.text :about_me
      t.string :linkedin
      t.string :github
      t.string :twitter

      t.timestamps
    end
  end
end
