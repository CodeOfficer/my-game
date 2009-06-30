class BaseTerrain
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
end

class ForestTerrain < BaseTerrain
end

class GrassTerrain < BaseTerrain
end

class MountainsTerrain < BaseTerrain
end

class PlainsTerrain < BaseTerrain
end

class WaterTerrain < BaseTerrain
end
