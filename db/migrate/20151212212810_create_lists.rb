class CreateLists < ActiveRecord::Migration[4.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
