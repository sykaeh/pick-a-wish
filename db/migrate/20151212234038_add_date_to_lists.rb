class AddDateToLists < ActiveRecord::Migration
  def change
    add_column :lists, :date, :date
  end
end
