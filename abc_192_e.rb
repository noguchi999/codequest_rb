# ダイクストラ法
if __FILE__ == $0
  N, M, X, Y = gets.split.map(&:to_i)
  connect = Array.new(N+1).map{[]}

  N.times do |i|
    a, b, t, k = gets.split.map(&:to_i)
    connect[a].push [b, t, k]
    connect[b].push [a, t, k]
  end

  que = []
end