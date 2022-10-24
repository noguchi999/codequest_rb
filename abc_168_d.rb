# BFS(幅優先探索)
if __FILE__ == $0
  n, m = gets.split(" ").map{|x| x.to_i}
  connect = Array.new(n+1).map{[]}
  m.times do |i|
    a, b = gets.split(" ").map{|x| x.to_i}
    connect[a].push b
    connect[b].push a
  end

  visited = [false] * (n+1)
  visited[1] = true
  que = [1]
  ans = [0]*(n+1)

  while que.size > 0
    now_room = que.shift
    connect[now_room].each do |to_room|
      unless visited[to_room]
        visited[to_room] = true
        ans[to_room] = now_room
        que.push to_room
      end
    end
  end

  puts "Yes"
  (2..n+1).each do |i|
    puts ans[i]
  end
end