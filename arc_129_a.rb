# ARC129 A
if __FILE__ == $0
  N, L, R = gets.chomp.split().map(&:to_i)
  lk = 0
  while 2**(lk+1) <= L
    lk += 1
  end

  rk = 0
  while 2**(rk+1) <= R
    rk += 1
  end

  ans = 0
  lk.upto(rk) do |i|
    if (2**i)^N < N
      ans += 2**(i+1) - 2**i
    end
  end

  if (2**lk)^N < N
    ans += L - 2**lk
  end
end