class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :user_id, :presence => true
  attr_accessible :alias, :user_id
end
