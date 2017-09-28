require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/json'
require_relative './controllers/games_controller.rb'
require_relative './controllers/games_api_controller.rb'

use GamesApiController
run GamesController