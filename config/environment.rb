APP_ROOT = File.expand_path('../../', __FILE__)

# load all the class files
require "#{APP_ROOT}/lib/tower_defence.rb"

# load the map config
CONFIG = YAML.load_file("#{APP_ROOT}/config/maps.yml")['legend']