class Post < ActiveRecord::Base
  belongs_to :users
  belongs_to :profiles
  attr_accessible :comments, :from_user_id, :to_user_id
end
