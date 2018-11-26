class AddInfoToGroupUsers < ActiveRecord::Migration[4.2]
  def change
    add_column :members, :email, :string
    add_column :members, :invited, :timestamp
    add_column :members, :accepted, :timestamp
    add_column :members, :declined, :timestamp
    add_column :members, :active, :boolean
  end
end
