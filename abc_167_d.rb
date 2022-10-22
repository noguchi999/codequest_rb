# ループ
if __FILE__ == $0
  n, k = gets.split(" ").map{|x| x.to_i}
  a = [0] + gets.split(" ").map{|x| x.to_i}

  visited = [-1] * (n+1)
  visited[1] = 0
  now_town = 1
  move_count = 0
  cycle = 0
  (10**6).times do |i|
    move_count += 1
    now_town = a[now_town]
    if move_count == k
      puts now_town
      exit
    end

    if visited[now_town] == -1
      visited[now_town] = move_count
    else
      cycle = move_count - visited[now_town]
      break
    end
  end

  k -= move_count
  k %= cycle
  k.times do |i|
    now_town = a[now_town]
  end

  puts now_town
end