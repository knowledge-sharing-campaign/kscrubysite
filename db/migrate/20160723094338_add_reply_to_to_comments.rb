class AddReplyToToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :reply_to, index: true, foreign_key: {to_table: "comments"}
  end
end
