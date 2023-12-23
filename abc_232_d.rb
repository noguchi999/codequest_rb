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
  end
end
