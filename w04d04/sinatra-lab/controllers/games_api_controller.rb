class GamesApiController < Sinatra::Base

	configure :development do
  	register Sinatra::Reloader
  end

    $games = [
      { 
          id: 0,
          title: "Magicka",
          developer: "Arrowhead Game Studios"
      },
      { 
          id: 1,
          title: "Shovel Knight",
          developer: "Yacht Club Games"
      },
      { 
          id: 2,
          title: "Risk of Rain",
          developer: "Hopoo Games"
      }
  ]

  # Index
	get "/api/games" do
		json $games
	end

		# Create
	post "/api/games/:id/:title/:developer" do
		# new_post = {
		# 	id: "",
		# 	title: "",
		# 	developer: ""
		# }
		# $games.push(new_post)
		# json $games

		id = params[:id].to_i
		title = params[:title]
		developer = params[:developer]
		json $games.push({id: id, title: title, developer: developer})

		json $games
	end

	# Show
	get "/api/games/:id" do
		id = params[:id].to_i
		json $games[id]
	end

	# Update
	put "/games/:id/:newid/:title/:developer" do
		# id = params[:id].to_i
		# $games.delete_at(id)
		# newid = params[:newid].to_i
		# title = params[:title]
		# developer = params[:developer]
		# json $games.push({newid: newid, title: title, developer: developer})

	end

	# Delete
	delete "/api/games/:id" do
		id = params[:id].to_i
		$games.delete_at(id)

		json $games
	end
	
end