class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :users, :dob, :date_of_birth
  	rename_column :users, :curr_address, :current_address
  	rename_column :users, :perm_address, :permanent_address
  end
end
