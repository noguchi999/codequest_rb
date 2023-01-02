# UnionFind1 ATC B
require 'union_find'

if __FILE__ == $0
  N,Q = gets.split.map(&:to_i)

  uf = UnionFind(N + 1)
  Q.times do |i|
    _p, a, b = gets.split.map(&:to_i)
    if _p == 0
      uf.merge(a, b)
    else
      if uf.same?(a, b)
        puts "Yes"
      else
        "No"
      end
    end
  end
end