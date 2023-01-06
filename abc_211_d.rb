# BFS2 ABC211 D Dif:755
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)

  connect = Array.new(N+1).map{[]}
  M.times do |i|
    a, b = gets.split.map(&:to_i)
    connect[a].push b
    connect[b].push a
  end

  mod = 10**9+7
  inf = 10**15
  time = [inf] * (N+1)
  time[1] = 0

  count = [0] * (N+1)
  count[1] = 1

  que = []
  que.push 1

  while 0 < que.size
    now = que.shift
    connect[now].each do |to|
      if time[to] == inf
        count[to] = count[now]
        time[to] = time[now] + 1
        que.push to
      else
        if time[to] == time[now] + 1
          count[to] += count[now]
        end
      end
      count[to] %= mod
    end
  end

  if time[N] == inf
    puts 0
  else
    puts count[N]
  end
end