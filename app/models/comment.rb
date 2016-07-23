class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  belongs_to :reply_to, class_name: "Comment"
end
