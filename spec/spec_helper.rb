require "rubygems"
require 'test/unit'
require "spec"
require "pp"

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file }

__END__

Nothing below this line will get run. Wicked cool!