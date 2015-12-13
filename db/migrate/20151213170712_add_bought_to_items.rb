class AddBoughtToItems < ActiveRecord::Migration
  def change
    add_column :items, :bought, :boolean, :default => false
  end
end
