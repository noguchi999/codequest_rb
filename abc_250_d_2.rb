# ABC250 D
def eratosthenes(n)
  is_prime = Array.new(n+1, true)
  i = 2
  while i**2 <= n
    unless is_prime[i]
      i += 1
      next
    end

    k = 2
    while i*k <= N
      is_prime[i*k] = false
      k += 1
    end
    i += 1

    p_list = []
    (2..n).each do |i|
      if is_prime[i]
        p_list << i
      end
    end
    p_list
  end

  p_list = []
  (2..n).each do |i|
    if is_prime[i]
      p_list << i
    end
  end
  p_list
end

def nibutan(i, len_p)
  l = 0
  r = len_p - 1
end

if __FILE__ == $0
  N = gets.split.map(&:to_i)
  P = eratosthenes(10**6)

  len_p = P.length
  ans = 0
end