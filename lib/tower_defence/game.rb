puts "loading game.rb"

module TowerDefence

  class Game

    attr_reader :run_state
    attr_reader :maps
    attr_reader :player

    def initialize
      @player = TowerDefence::Player.new
      @run_state = false
      @maps = []
      load_maps
    end

    def run(run_state = true)
      @run_state = run_state
      begin
        @run_state = false
      end until @run_state == false
    end

  private

    def load_maps
      @maps << TowerDefence::Map.new('001')
      @maps << TowerDefence::Map.new('002')
    end

  end

end