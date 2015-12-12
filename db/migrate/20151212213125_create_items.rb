class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.references :list, index: true, foreign_key: true
      t.timestamp :claimed_on

      t.timestamps null: false
    end
  end
end
