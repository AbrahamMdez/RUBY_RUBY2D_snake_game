module model 
    class Coord < Struct.new(row, col)
    end

    class Food < Coord
    end

    class Snake < Struct.new(positions)
    end

    class Grid < Struct.new(rows, cols)
    end

    class State < Struct.new(food, grid, state)
    end
end
