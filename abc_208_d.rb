# ワーシャルフロイド法 ABC208 D Dif:1190
if __FILE__ == $0
  N, M = gets.split.map(&:to_i)

  inf = 10**15
  _time = Array.new(N+1).map{[inf]*(N+1)}
  (1..N).each do |i|
    _time[i][i] = 0
  end

  M.times do |i|
    a, b, c = gets.split.map(&:to_i)
    _time[a][b] = c
  end

  ans = 0
  (1..N).each do |k|
    new_time = Array.new(N+1).map{[0]*(N+1)}
    (1..N).each do |start|
      (1..N).each do |goal|
        new_time[start][goal] = [_time[start][goal], _time[start][k]+_time[k][goal]].min
    end

    (1..N).each do |start|
      (1..N).each do |goal|
        if new_time[start][goal] != inf
          ans += new_time[start][goal]
        end
      end
    end

    _time = new_time
  end

  puts ans
end