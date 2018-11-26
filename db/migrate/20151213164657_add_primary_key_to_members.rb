class AddPrimaryKeyToMembers < ActiveRecord::Migration[4.2]
  def self.up
    add_column :members, :id, :primary_key
  end

  def self.down
    remove_column :members, :id
  end
end
