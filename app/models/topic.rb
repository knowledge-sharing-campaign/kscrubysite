class Topic < ActiveRecord::Base
  belongs_to :created_by, class_name: "User"
  has_many :comments

  accepts_nested_attributes_for :comments
end
