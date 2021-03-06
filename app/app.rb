ENV["RACK_ENV"] ||= "development"

require "sinatra/base"
require 'sinatra/cross_origin'
require "json"

require_relative "models/score_calculator"
require_relative "models/deck"
require_relative "models/card"
require_relative "models/hand"
require_relative "models/player"
require_relative "models/round"
require_relative "models/game"

require_relative "controllers/poker"

Game.start