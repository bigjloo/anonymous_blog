=begin

Show me all posts ==
Show me a particular post ==
Create a new post
Edit an existing post
Delete an existing post

=end
require 'byebug'

get '/post/show' do

end

get '/post/show/:id' do
  @post = Post.find_by_id(params[:id])
  erb :post
end

get '/post/new' do
  erb :new_post
end

post '/post/success' do
  @tags = params[:tags].split(",") #array
  @new_post = Post.create(params[:post])
  p @tags
  if @tags.nil?
    redirect to '/'
  else
    @tags.each do |tag|
      @new_tag = Tag.create(name: tag)
      PostsTag.create(post_id: @new_post.id , tag_id: @new_tag.id)
    end
    redirect to '/'
  end
end

post '/post/edit' do
  # p params[:post_id]
  # p "params= #{params[:post_id]}"
  # @id = params[:post_id].to_i
  # Post.update(@id, )
  erb :update
end

post '/post/edit_done' do
  Post.update(post.id, params)
  @message = "Post updated!"
  erb :post
end

get '/post/delete' do
  @id = params[:@post_id]
  Post.destroy(@id)
  @message = "Post #{Post.find(@id).title} deleted!"
  erb :index
end

