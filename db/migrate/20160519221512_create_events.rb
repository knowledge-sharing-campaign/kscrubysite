class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :location
      t.date :date
      t.time :startTime
      t.integer :host_id

      t.timestamps null: false
    end
  end
end
