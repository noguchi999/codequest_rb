# ABC228 D
require "fenwick_tree"

if __FILE__ == $0
  Q = gets.to_i
  N = 2**20
  A = Array.new(N, -1)

  fenwick_tree = FenwickTree.new(N)
end
