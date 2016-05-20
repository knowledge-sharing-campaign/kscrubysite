class AddNameColumnToEvent < ActiveRecord::Migration
  def change
    add_column :events, :name, :string
  end
end
