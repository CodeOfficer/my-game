require "rubygems"
require 'test/unit'
require "spec"
require "pp"

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file }

CONFIG = YAML.load_file(File.dirname(__FILE__) + '/../config/maps.yml')['legend']

__END__

Nothing below this line will get run. Wicked cool!

rspec cheat sheet:

http://cheat.errtheblog.com/s/rspec/