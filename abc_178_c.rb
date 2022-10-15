if __FILE__ == $0
  N = gets.to_i
  mod = 10**9 + 7

  A_all = 10.pow(N, mod)
  A_0 = 9.pow(N, mod)
  A_9 = 9.pow(N, mod)
  A_0_9 = 8.pow(N, mod)

  ans = A_all - (A_0 + A_9 - A_0_9)
  puts ans%mod
end