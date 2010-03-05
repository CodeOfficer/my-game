puts "loading environment.rb"

puts File.dirname(__FILE__)

# load all the class files
require File.dirname(__FILE__) + '/../lib/tower_defence.rb'

# load the map config
CONFIG = YAML.load_file(File.dirname(__FILE__) + '/../config/maps.yml')['legend']