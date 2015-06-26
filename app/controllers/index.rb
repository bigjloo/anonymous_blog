require 'byebug'

get '/' do
  @all_posts = Post.all.reverse
  p @all_post
  @errors = params[:errors] if !params[:errors].nil?
  erb :index
end

