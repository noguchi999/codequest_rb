# 連想配列1 ABC206 C Dif:171
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  h = Hash.new { |h, k| h[k] = Hash.new(0) }
  N.times do |i|
    h[A[i]] += 1
  end

  ans = N*(N-1)/2
  h.values.each do |x|
    ans -= x*(x-1)/2
  end

  puts ans
end