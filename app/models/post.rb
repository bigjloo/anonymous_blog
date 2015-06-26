class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tags
  has_many :tags, :through => :posts_tags

  validates :title, presence: { message: "Blog title is required" }
  validates :blog, presence: { message: "Blog is required" }

end
