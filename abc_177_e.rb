# 高速素因数分解
def fast_prime_fact(x)
  prime = []
  while 1 < x
    prime.push D[x]
    x /= D[x]
  end
  prime
end

if __FILE__ == $0
  N = gets.to_i
  A = gets.split.map(&:to_i)

  D = [0]*(10**6+10)
  (2..10**6+10).each do |i|
    next if D[i] != 0
    (1..10**6).each do |k|
      if i*k < 10**6+10
        if D[i*k] == 0
          D[i*k] = i
        end
      else
        break
      end
    end
  end

  pairwise = true
  prime_used = [0]*(10**6+10)
  N.times do |i|
    prime_list = fast_prime_fact(A[i])
    prime_list.uniq.each do |i|
      if prime_used[i] == 1
        pairwise = false
        break
      else
        prime_used[i] = 1
      end
    end
  end

  if pairwise
    puts "pairwise coprime"
    exit
# 途中
end