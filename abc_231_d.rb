# UnionFind2 ABC231 D Dif:726
require 'union_find'

if __FILE__ == $0
  N, M = gets.split.map(&:to_i)

  uf = UnionFind(N + 1)
  count = Array.new(N+1).map{[0]}

  M.times do |i|
    a, b = gets.split.map(&:to_i)
    count[a] += 1
    count[b] += 1

    if 3 <= count[a] || 3 <= count[b]
      puts "No"
      exit
    end

    if uf.same?(a, b)
      puts "No"
      exit
    else
      uf.merge(a, b)
    end
  end

  puts "Yes"
end