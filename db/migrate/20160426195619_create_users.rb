class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password
      t.string :c_number
      t.string :gender
      t.datetime :dob
      t.string :curr_address
      t.string :perm_address
      t.string :country
      t.string :city
      t.string :university
      t.string :course
      t.string :source

      t.timestamps null: false
    end
  end
end
