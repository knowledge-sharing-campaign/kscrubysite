class RenameCNumberToContactNumber < ActiveRecord::Migration
  def change
    rename_column :users, :c_number, :contact_number
  end
end
