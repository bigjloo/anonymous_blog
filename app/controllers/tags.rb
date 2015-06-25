=begin

Show me all posts with a given tag
Tags will be created via the Post-creation form.

=end

get '/tag/:id' do
	@tag = Tag.find(params[:id]).name
	@all_post = Tag.find(params[:id]).posts.all
	erb :tag_show
end