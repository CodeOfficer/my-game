puts "loading environment.rb"

# load all the class files
Dir.glob(File.join(File.dirname(__FILE__), '../lib/*.rb')).each { |f| require f }

# load the map config
CONFIG = YAML.load_file(File.dirname(__FILE__) + '/../config/maps.yml')['legend']