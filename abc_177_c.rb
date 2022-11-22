# 数列の和 Dif:386 ABC177 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  mod = 10**9+7
  a_sum = A.sum
  ans = 0
  N.times do |i|
    a_sum -= A[i]
    ans += A[i] * a_sum
    ans %= mod
  end

  puts ans
end