require 'byebug'

get '/' do
  @all_posts = Post.last(3).reverse
  @errors = params[:errors] if !params[:errors].nil?
  erb :index
end

