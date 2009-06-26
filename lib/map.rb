# maps contain layers of matrices
# units
# terrain

class Map
  
  attr_accessor :units
  attr_accessor :layers
  
  def initialize(*args, &block)
    @units = []
    @layers = []
    yield self if block_given?
  end
  
  def place(x, y, what)
    @units << [x, y, what]
  end
  
end