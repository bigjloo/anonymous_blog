
require 'byebug'


get '/tag/:name' do
	@tag = Tag.find_by_name(params[:name])
	@all_post = Tag.find_by_name(params[:name]).posts
  erb :tag_show

end