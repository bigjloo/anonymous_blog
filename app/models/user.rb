class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates_uniqueness_of :email

  has_many :posts
end

