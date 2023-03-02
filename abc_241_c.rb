# ABC241 C
def count_sharp(grid, g, r, gd, rd)
  cnt = 0
  6.times do |i|
    if grid[g + gd*i][r + rd*i] == "#"
      cnt += 1
    end
  end

  if 4 <= cnt
    puts "Yes"
    exit
  end
end

if __FILE__ == $0
  N = gets.split.map(&:to_i)
  grid = []

  N.times do |i|
    s = gets.split.map(&:to_i)
    grid << s
  end

  N.times do |g|
    N.times do |r|
      count_sharp(grid, g, r, 0, 1) if r + 5 <= N
      count_sharp(grid, g, r, 1, 0) if g + 5 < N
      count_sharp(grid, g, r, 1, 1) if g + 5 < N && r + 5 < N
      count_sharp(grid, g, r, 1, -1) if g + 5 < N && 0 <= r - 5
    end
  end

  puts "No"
end