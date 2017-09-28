class GamesController < Sinatra::Base
	
	configure :development do
  	register Sinatra::Reloader
  end

  # Index
	get "/games" do
		"All the Games"
	end

		# Create
	post "/games" do
		"Create new gamyez"
	end

	# New
	get "/games/new" do
		"<h1>Add a new en</h1>"
	end

	# Edit
	get "/games/:id/edit" do
		id = params[:id]
		"<h1>Edit this one #{id} ?</h1>"
	end

	# Show
	get "/games/:id" do
		id = params[:id]
		"<h1>Show all the games! #{id}</h1>"
	end

	# Update
	put "/games/:id" do
		id = params[:id]
		"<h1>updating this #{id}</h1>"
	end

	# Delete
	delete "/games/:id" do
		id = params[:id]
		"<h1>Deleting this #{id}</h1>"
	end
	
	
end