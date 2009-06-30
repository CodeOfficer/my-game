class BasePlayer
  
  attr_reader :game
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
end

class ComputerPlayer < BasePlayer
  
end

class HumanPlayer < BasePlayer
  
end