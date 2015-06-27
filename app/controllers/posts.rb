
require 'byebug'



get '/post/new' do
  erb :new_post
end

post '/post' do

  @post = Post.new(params[:post])
  if @post.save
    if logged_in?
      @post.update(user_id: @current_user.id)
      redirect to "/user/#{@current_user.id}"
    end
    redirect to "/urls/#{@url.id}"
  else
    @urls = Url.all
    @error = "Please key in the valid url"
    erb :index
  end
  if @post.save
    @tags = params[:tags].split(", ")
     @tags.each do |tag|
      @post.tags << Tag.find_or_create_by(name: tag)
    end
    redirect to '/'
  else
    redirect to "/?errors=#{@post.errors.messages}"
  end
end

get '/post/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/post/:id/edit' do
  @post = Post.find(params[:id])
  erb :edit_post
end

patch '/post/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])
  if @post.save
  redirect to "/post/#{@post.id}"
  end
end

delete '/post/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect to '/'
end
