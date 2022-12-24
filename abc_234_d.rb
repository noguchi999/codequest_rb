# heap ABC234 D Dif:503
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  P = gets.split.map(&:to_i)

  que = []
  K.times do |i|
    que.push P[i]
  end
  que.uniq!.sort!
  puts que[0]

  (K..N-1).times do |i|
    x = que.pop
    que.push [x, P[i]].max
    puts que[0]
  end
end