# ABC240 E
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  edge = Array.new(N+1).map{[]}
  (N-1).times do |i|
    u, v = gets.split.map(&:to_i)
    edge[u].push v
    edge[v].push u
  end

  lr = Array.new(N+1).map{[10**9, 1]}
  que = [[1, 0, 1]]
  leaf_count = 1
end