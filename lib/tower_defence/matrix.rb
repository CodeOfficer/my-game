puts "loading matrix.rb"

module TowerDefence

  class Matrix
    def initialize(cols, rows)
      @cols = cols
      @rows = rows
      @data = []
      @rows.times do |y|
        @data[y] = Array.new(cols)
      end
    end

    def [](x, y)
      @data[y][x]
    end

    def []=(x, y, value)
      @data[y][x] = value
    end

    def to_s
      str = @data.inject('') do |result, row|
        result + row.collect {|x| x.to_s }.join(' ') + "\n"
      end
    end

    # def all_positions
    #   (0...@rows).collect do |y|
    #     (0...@cols).collect do |x|
    #       [x,y]
    #     end
    #   end.inject([]) { |a, b| a.concat b }
    # end

    # def rep
    #   @data.collect do |row|
    #     row.collect do |item|
    #       item.rep
    #     end
    #   end
    # end
  end

end