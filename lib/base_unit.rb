class BaseUnit
  
  attr_reader :name
  attr_reader :player
  
  def initialize(player, name) 
    @player = player
    @name = name
  end

end

class GeekUnit <  BaseUnit
  
end

class NerdUnit <  BaseUnit
  
end