# Union Find
require 'union_find'

if __FILE__ == $0
  N, M = gets.split(" ").map{|x| x.to_i}
  uni = UnionFind.new N
  M.times do |i|
    A, B = gets.split(" ").map{|x| x.to_i}
    A -= 1
    B -= 1
    uni.merge(A, B)
  end
  friends_group = uni.groups

  friends_size = []
  friends_group.each do |fri|
    friends_size.push fri.size
  end

  puts friends_size.max
end