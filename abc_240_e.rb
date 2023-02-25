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
  while 0 < que.size
    now, parent, visit = que.pop
    if visit == 1
      edge[now].each do |to|
        if to != parent
          que.push [to, now, 1]
        end
      end
    else
      if now != 1 && edge[now].size == 1
        lr[now] = [leaf_count, leaf_count]
        leaf_count += 1
      end
      lr[parent][0] = [lr[parent][0], lr[now][0]].min
      lr[parent][1] = [lr[parent][1], lr[now][1]].max
    end
  end

  (1..N).each do |i|
    puts *lr[i]
  end
end