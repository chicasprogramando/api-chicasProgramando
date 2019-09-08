class AddAuthSubToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :auth_sub, :string
  end
end
