class AddClaimedByToItems < ActiveRecord::Migration[4.2]
  def change
    add_column :items, :claimed_by_id, :integer
    add_index :items, :claimed_by_id
  end
end
