# ARC130 B
if __FILE__ == $0
  H, W, C, Q = gets.chomp.split().map(&:to_i)

  queries = []
  Q.times do |i|
    t, n, c = gets.chomp.split().map(&:to_i)
    queries << [t, n, c]
  end
end