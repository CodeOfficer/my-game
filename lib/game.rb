class Game
  
  attr_reader :running

  def initialize(*args)
    @running = false
  end
  
  def run
    @running = true    
  end
  
end