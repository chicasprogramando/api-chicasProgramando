class AddProfileCompletedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_completed, :boolean
  end
end
