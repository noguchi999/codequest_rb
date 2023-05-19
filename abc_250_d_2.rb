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
  end
end

if __FILE__ == $0
  N = gets.split.map(&:to_i)
  P = eratosthenes(10**6)

  len_p = P.length
end