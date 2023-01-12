# 尺取法2、エラトステネスの篩 ABC250 D Dif:797
def eratosthenes(n)
  is_prime = Array.new(n+1).map{[true]}
  i = 2
  while i**2 <= n
    if is_prime[i] == false
      i += 1
      next
    end

    k = 2
    while i*k <= n
      is_prime[i*k] = false
      k += 1
    end

    i += 1
  end

  p_list = []
  (2..n).each do |i|
    if is_prime[i] == true
      p_list.push i
    end
  end
  p_list
end

def nibutan(i, _p, n)
  l = 0
  r = _p.size - 1
  while 1 < (r - l)
    c = (l+r)/2
    if _p[i]*_p[c]**3 <= n
      l = c
    else
      r = c
    end
  end
  l
end

if __FILE__ == $0
  N = gets.split.map(&:to_i)
  P = eratosthenes(10**6)

  ans = 0
  P.size.times do |i|
    k = nibutan(i, P, N)
    if i < k
      ans += k - i
    else
      break
    end
  end

  puts
end