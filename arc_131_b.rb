# ARC131 B
def color(r, c)
  used = Set.new
  used << grid[r-1][c] if 0 <= r-1
  used << grid[r+1][c] if r+1 < H
  used << grid[r][c-1] if 0 <= c-1
  used << grid[r][c+1] if c+1 < W
  return "1" unless used.include? "1"
  return "2" unless used.include? "2"
  return "3" unless used.include? "3"
  return "4" unless used.include? "4"
  return "5" unless used.include? "5"
end

if __FILE__ == $0
  H, W = gets.chomp.split.map(&:to_i)
  grid = []

  H.times do |i|
    ci = gets.chomp
    grid << [ci]
  end

  H.times do |r|
    W.times do |c|
      if grid[r][c] == "."
        grid[r][c] = color(r, c)
      end
    end
  end

  grid.each do |r|
    puts grid[r].join
  end
end