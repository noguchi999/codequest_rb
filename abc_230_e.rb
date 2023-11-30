# ABC230 E
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  ans = 0
  n_root = Math.sqrt(N).to_i

  (1..n_root).each do |k|
    ans += k * ((N / k).to_i - (N / (k + 1).to_i))
  end

  (1..(N / n_root).to_i).each do |i|
    ans += (N / i).to_i
  end

  puts ans
end
