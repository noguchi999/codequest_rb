def BFS(start)
  visited = [false] * ($N+1)
  visited[start] = true
  count = 1

  pool = []
  pool.push start
  while 0 < pool.size
    now_city = pool.shift
    $connect[now_city].each do |to_city|
      if visited[to_city] == false
        visited[to_city] = true
        count += 1
        pool.push to_city
      end
    end
  end

  return count
end

if __FILE__ == $0
  $N, M = gets.split(" ").map{|x| x.to_i}
  $connect = Array.new($N+1).map{[]}
  M.times do |i|
    A, B = gets.split().map{|x| x.to_i}
    $connect[A].push B
  end

  ans = 0
  (1..$N).each do |i|
    ans += BFS(i)
  end

  puts ans
end