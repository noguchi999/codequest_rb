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
end
