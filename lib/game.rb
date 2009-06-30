class Game
  
  attr_reader :running
  attr_reader :maps

  def initialize(*args)
    @running = false
    @maps = []
  end
  
  def run
    @running = true
    while @running
      break
    end
  end
  
  def add_map(map, &block)
    yield map if block_given? # yeild to make so stuff can be added?
    @maps.push(map)
  end
  
end