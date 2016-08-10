require 'matrix'
def solution n
  grid = Matrix.build(n+1, n+1) { 0 }.to_a
  grid[0][0] = 1
  for i in (0...(n+1))
    for j in (0...(n+1))
      grid[i][j] += grid[i-1][j] if i > 0
      grid[i][j] += grid[i][j-1] if j > 0
    end
  end
  p grid[n][n]
end

solution 20
