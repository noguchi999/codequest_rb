# ABC239 A
if __FILE__ == $0
  H = gets.split.map(&:to_i)
  puts Math.sqrt(H*(12800000+H))
end