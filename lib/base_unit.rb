puts "loading base_unit.rb"

class BaseUnit

  attr_reader :name

  def initialize(name)
    @name = name
  end

end

class GeekUnit <  BaseUnit

end

class NerdUnit <  BaseUnit

end