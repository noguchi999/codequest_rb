# itertools Dif:335 ABC183 C
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)

  time = []
  N.times do |i|
    t = gets.split.map(&:to_i)
    time.push t
  end

  ans = 0
  (1..N-1).to_a.permutation do |root|
    now_time = 0
    now_time += time[0][root[0]]
    now_city = root[0]

    (1..N-2).each do |i|
      to_city = root[i]
      now_time += time[now_city][to_city]
      now_city = to_city
    end

    now_time += time[now_city][0]
    if now_time == K
      ans += 1
    end
  end

  puts ans
end