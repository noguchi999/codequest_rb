# ABC232 D
if __FILE__ == $0
  H, W = gets.chomp.split.map(&:to_i)

  grid = []
  H.times do |i|
    ci = gets.chomp.split.map(&:to_i)
    ci_list = Array.new(ci)
    grid << ci_list
  end

  grid_count = Array.new(H) { Array.new(W, 0) }
  queue = []
  grid_count[0][0] = 1
  queue << [0, 0]

  while !queue.empty?
    g, r = queue.shift
    now_count = grid_count[g][r]

    if g + 1 < H && grid[g+1][r] == "."
      if grid_count[g+1][r] == 0 < now_count + 1
        grid_count[g+1][r] = now_count + 1
        queue << [g+1, r]
      end
    end

    if r + 1 < W && grid[g][r+1] == "."
      if grid_count[g][r+1] == 0 < now_count + 1
        grid_count[g][r+1] = now_count + 1
        queue << [g, r+1]
      end
    end
  end

  ans = 0
end
