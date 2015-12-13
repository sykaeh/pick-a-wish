class JoinTables < ActiveRecord::Migration
  def change
    create_table :members, id: false do |t|
      t.integer :group_id
      t.integer :user_id
    end

    add_index :members, :group_id
    add_index :members, :user_id

    create_table :lists_users, id: false do |t|
      t.integer :list_id
      t.integer :user_id
    end

    add_index :lists_users, :list_id
    add_index :lists_users, :user_id

    create_table :groups_lists, id: false do |t|
      t.integer :group_id
      t.integer :list_id
    end

    add_index :groups_lists, :group_id
    add_index :groups_lists, :list_id
  end
end
