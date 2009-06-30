# maps contain layers of matrices
# units
# terrain

class Map
  
  attr_accessor :units
  attr_accessor :terrain
  attr_reader :width, :height
  
  def initialize(map_name, &block)
    if block_given?
      rows = yield(block)
    else
      # todo: read from file?
      rows = <<-END
          gggggggggg
          gggggggwww
          ggggggwwff
          gggppppppp
          ggppggwfpf
          ggpgggwwff
        END
    end
     
    rows = rows.split("\n")
    rows.collect! { |row| row.gsub(/\s+/, '').split(//) }
    @height = rows.size
    @width = rows[0].size
    @terrain = Matrix.new(@width, @height)
    @units = Matrix.new(@width, @height)
    rows.each_with_index do |row, y|
      row.each_with_index do |glyph, x|        
        @terrain[x, y] = Object.const_get( CONFIG[glyph] + "Terrain" ).new( CONFIG[glyph] )
      end
    end
  end
  
  def place(x, y, unit)
    @units[x, y] = unit
  end
  
end