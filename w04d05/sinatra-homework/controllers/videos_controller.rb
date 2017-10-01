class VideosController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # Turn on Sinatra Reloader
  configure :development do
      register Sinatra::Reloader
  end 

  # Homepage / get all
  get '/' do

  	@title = "YouTube"

  	@videos = Video.all

  	erb :'posts/index'

  end
	
	# create new video
	get '/new' do

		@video = Video.new

		erb :'posts/new'
	end

	# Get specific video by ID
	get '/:id' do

		id = params[:id].to_i

		@video = Video.find(id)

		erb :'posts/show'

	end

	post '/' do

		video = Video.new
		video.title = params[:title]
		video.description = params[:description]
		video.url = params[:url]
		video.save
		redirect "/"

	end

	put '/id' do

		id = params[:id].to_i

		video = Video.find(id)

		video.title = params[:title]
		video.description = params[:description]
		video.url = params[:url]

		video.save

		redirect "/"

	end

	delete '/:id' do

		id = params[:id].to_i

		Video.destroy(id)

		redirect "/"

	end

	get '/:id/edit' do

		id = params[:id].to_i

		@video = Video.find(id)

		erb :'posts/edit'

	end

end