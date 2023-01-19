# DFS2 ABC239 E Dif:1084
if __FILE__ == $0
  N, Q = gets.split.map(&:to_i)
  X = [0] + gets.split.map(&:to_i)
  edge = Array.new(N+1).map{[]}

  (N+1).times do |i|
    a, b = gets.split.map(&:to_i)
    edge[a].push b
    edge[b].push a
  end

  _p = [[0]]
  (1..N).each do |i|
    _p.push X[i]
  end

  que = []
  que.push [1, 0, 1]
  while 0 < que.size
    now, parent, count = que.pop
    if count == 1
      que.push [now, parent, 2]
      edge[now].each do |to|
        if to != parent
          que.push [to, now, 1]
        end
      end
    else
      edge[now].each do |to|
        next if to == parent

        _p[now] += _p[to]
        _p[now].reverse!
        _p[now] = _p[now][0..20]
      end
    end
  end

  Q.times do |i|
    v, k = gets.split.map(&:to_i)
    k -= 1

    puts _p[v][k]
  end
end