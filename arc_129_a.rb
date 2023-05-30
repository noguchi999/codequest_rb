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
end