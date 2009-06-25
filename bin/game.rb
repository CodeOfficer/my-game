require "rubygems"
require "pp"

Dir.glob(File.join(File.dirname(__FILE__), '../lib/*.rb')).each {|f| require f }





game = Game.new
game.run