class AddDateToLists < ActiveRecord::Migration[4.2]
  def change
    add_column :lists, :date, :date
  end
end
