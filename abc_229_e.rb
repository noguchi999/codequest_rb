# ABC229 E
require 'union_find'
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)

  edge = Array,new(N, [])
  M.times do |i|
    A, B = gets.split.map(&:to_i)
    edge[A] << B
  end

  union_find = UnionFind.new(N)
  ans = Array.new(N, 0)
  count = 0
  N.times.reverse do |i|
    count += 1
    edge[i].each do |x|
      unless union_find.same?(i, x)
        union_find.merge(i, x)
        count -= 1
      end
    end
    ans[i-1] = count
  end

  (1..N).each do |i|
    puts ans[i]
  end
end
