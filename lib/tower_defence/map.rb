module TowerDefence

  class Map

    attr_reader :units
    attr_reader :terrain
    attr_reader :width, :height
    attr_reader :name

    def initialize(name, &block)
      if block_given?
        map = yield(block)
      else
        path = File.dirname(__FILE__) + "/../../maps/#{name}.txt"
        map = File.open(path, "r").read
      end
      @name = name
      rows = parse_rows(map)
      @height = rows.size
      @width = rows[0].size
      @terrain = TowerDefence::Matrix.new(@width, @height)
      @units = TowerDefence::Matrix.new(@width, @height)
      rows.each_with_index do |row, y|
        row.each_with_index do |map_code, x|
          @terrain[x, y] = map_code
          # @terrain[x, y] = Object.const_get( CONFIG[map_code] + "Terrain" ).new( CONFIG[map_code] )
        end
      end
    end

    def place(x, y, unit)
      @units[x, y] = unit
    end

    def to_s
      # puts "UNITS"
      # puts @units.to_s
      puts "TERRAIN"
      puts @terrain.to_s
    end

  private

    def parse_rows(map_data)
      rows = map_data.split("\n")
      rows.collect! { |row| row.gsub(/\s+/, '').split(//) }
    end

  end

end