# ARC135 A
if __FILE__ == $0
  X = gets.split.map(&:to_i)

  mod = 998244353
  count = Hash.new(0)
  count[X] = 1
  num_set = Set.new([X])
end