class ChangeDefaultValuesTableUsers < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :accepted_terms, from: true, to: false
    change_column_default :users, :profile_completed, from: true, to: false
  end
end
