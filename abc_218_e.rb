# UnionFind3 ABC218 E Dif:1004
require "union_find"
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)
  edge = []
  M.times do |i|
    a, b, c = gets.split.map(&:to_i)
    edge.push [c, a, b]
  end
  edge.sort!

  ans = 0
  M.times do |i|
    ans += edge[i][0]
  end

  uf = UnionFind.new(N+1)
  edge.each do |c, a, b|
    if c <= 0
      uf.merge(a, b)
      ans += C.abs
    else
      unless uf.same(a, b)
        ans -= c
        uf.merge(a, b)
      end
    end
  end

  puts ans
end