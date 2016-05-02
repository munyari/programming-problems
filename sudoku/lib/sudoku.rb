require "pry"

class Sudoku
  def initialize(grid)
    @grid = grid
  end

  def is_valid
    valid9 = ->(row) { row.uniq.inject(:+) == 45 }
    square9 = ->(x, y) { (y..y+2).map { |j| @grid[j][x,3] }.inject(:+) }
    @grid.length == @grid[0].length &&
      @grid.all? { |row| valid9[row] } &&
      @grid.transpose.all? { |row| valid9[row] } &&
      [0, 3, 6].product([0, 3, 6]).all? { |x, y| valid9[square9[x, y]] }
  end
end

