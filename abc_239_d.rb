# ABC239 D
def eratosthenes(N)
  is_prime = [true]*(N+1)
  i = 2
  while i**2 <= N
    unless is_prime[i]
      i += 1
      next
    end

    k = 2
    while i*k <=N
      is_prime[i*k] = false
      k += 1
    end

    i += 1
  end

  p_list = []
  (2..N).each do |i|
    if is_prime[i]
      p_list.push i
    end
  end
  p_list
end

if __FILE__ == $0
  a, b, c, d = gets.split.map(&:to_i)

  _p = eratosthenes(200)
end