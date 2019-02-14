class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :place
      t.string :name

      t.timestamps
    end
  end
end
