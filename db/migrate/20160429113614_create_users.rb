class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, uniqueness: true, null: false
      t.string :username, uniqueness: true, null: false
      t.string :password, null: false
      t.string :c_number
      t.string :gender
      t.datetime :dob
      t.string :curr_address
      t.string :perm_address
      t.string :country
      t.string :city
      t.string :course
      t.string :university
      t.string :source

      t.timestamps null: false
    end
  end
end
