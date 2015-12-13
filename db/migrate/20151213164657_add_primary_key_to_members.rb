class AddPrimaryKeyToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :id, :primary_key
  end

  def self.down
    remove_column :members, :id
  end
end
