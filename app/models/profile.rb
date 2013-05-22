class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :user_id, :presence => true
  attr_accessible :alias, :user_id


  def self.search(search)
    if search or search.nil?
      where('alias LIKE ?', "%#{search}%")
    else
      scoped

    end
  end
end
