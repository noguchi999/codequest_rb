# ABC233 E
if __FILE__ == $0
  X = gets
  N = X.length

  d = Array.new(N, 0)
  d[0] = X[0].to_i
  (1...N).each do |i|
    d[i] = d[i-1] + X[i].to_i
  end

  (N-1).downto(0).each do |i|
    d[i-1] += d[i] / 10
    d[i] = (d[i]%10).to_s
  end

  d[0] = d[0].to_s
  puts d.join
end
