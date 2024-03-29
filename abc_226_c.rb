# ABC226 C
if __FILE__ == $0
  N = gets.to_i

  connect = Array.new(N).map{[]}
  T = [0]
  (1..N).each do |i|
    TKA = gets.split.map(&:to_i)
    T << TKA[0]
    K = TKA[1]

    (2..K+1).each do |x|
      connect[i] << TKA[x]
    end
  end
  lean = Array.new(N+1, false)

  queue = [N]
  while !queue.empty?
    now = queue.shift
    lean[now] = true
    connect[now].each do |to|
      queue << to if !lean[to]
    end
  end

  ans = 0
  (1..N).each do |i|
    if lean[i]
      ans += T[i]
    end
  end

  puts ans
end