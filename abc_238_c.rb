# 規則性利用 ABC238 C Dif:637
if __FILE__ == $0
  mod = 998244353
  N = gets

  def s(a, b)
    (B-A+1)*(A+B)/2
  end

  ans = 0
  (1..18).each do |x|
    if 10**x <= N
      ans += s(1, 9*10**(x-1))
      ans %= mod
    else
      ans += s(1, N-10**(x-1)+1)
      ans %= mod
      break
    end
  end
  puts ans
end