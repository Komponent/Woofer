class User < ActiveRecord::Base
  has_many :posts
  has_one :profile
  validates :email,:confirmation => true
  validates :name,:surname,:password,:email,:email_confirmation,:dateofbirth,:presence => true

  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :trackable, :confirmable
  attr_accessible :dateofbirth, :email,:email_confirmation, :gender, :name, :password, :surname ,:password_confirmation, :remember_me


  def self.search(search)
    if search
      where('alias LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

end
