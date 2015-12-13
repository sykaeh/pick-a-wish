class SetDefault < ActiveRecord::Migration
  def self.up
    change_column :members, :active, :boolean, :default => false, :null => false
    change_column :groups, :public, :boolean, :default => false, :null => false
  end

  def self.down
    # You can't currently remove default values in Rails
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end
