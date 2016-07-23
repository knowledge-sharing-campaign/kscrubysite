class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :views
      t.belongs_to :created_by, index: true, foreign_key: {to_table: :users}

      t.timestamps null: false
    end
  end
end
