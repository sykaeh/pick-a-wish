class AddClaimedByToItems < ActiveRecord::Migration
  def change
    add_column :items, :claimed_by_id, :integer
    add_index :items, :claimed_by_id
  end
end
