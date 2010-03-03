puts "loading game.rb"

class Game

  attr_reader :running
  attr_reader :maps
  attr_reader :players

  def initialize(players)
    @players = Array.new(players)
    @running = false
    @maps = []
  end

  def run(running = true)
    @running = running
    begin
      @running = false
    end until @running == false
  end

  def add_map(map, &block)
    yield map if block_given? # yeild to make so stuff can be added?
    @maps.push(map)
  end

end