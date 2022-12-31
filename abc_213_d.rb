# DFS1 ABC213 D Dif:710
def dfs(connect, ans, now, pre)
  ans.push now
  connect[now].each do |to|
    if to != pre
      dfs(connect, ans, to, now)
      ans.push now

if __FILE__ == $0
  N = gets.split.map(&:to_i)

  connect = Array.new(N+1) {[]}
  (N-1).times do |i|
    a, b = gets.split.map(&:to_i)
    connect[a].push b
    connect[b].push a
  end

  (N+1).times do |i|
    connect[i].sort!
  end

  ans = []
  dfs(connect, ans, 1, -1)

  puts *ans
end