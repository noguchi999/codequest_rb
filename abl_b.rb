# FenwickTree ACL B
require "fenwick_tree"

if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  ft = FenwickTree.new(N+1)
  N.times do |i|
    ft.add i, a[i]
  end

  Q.times do |i|
    q, a, b = gets.split.map(&:to_i)
    if q == 0
      ft.add a, b
    else
      puts ft.sum(a, b -1)
    end
  end
end