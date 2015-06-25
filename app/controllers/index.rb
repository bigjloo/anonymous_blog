get '/' do
  # Look in app/views/index.erb
  # @front_page_post = Post.find(:all, :order => "id desc", :limit => 3)
  # p @front_page_post
  @all_posts = Post.all.reverse
  erb :index
end

