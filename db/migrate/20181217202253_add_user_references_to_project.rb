class AddUserReferencesToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :UserReference, :string
  end
end
