# 素因数分解
def prime_fatrorize(n)
  return [1] if n == 1

  prime_list = []
  i = 2
  while i*i <= n
    if n%i == 0
      prime_list.push i
      n /= i
    else
      i += 1
    end
  end

  if n != 1
    prime_list.push n
  end

  prime_list
end

if __FILE__ == $0
  n = gets.to_i
  if n == 1
    puts 0
    exit
  end

  prime_n = prime_fatrorize(n)
  prime_n.uniq!

  ans = 0
  prime_n.each do |p|
    (1..10**10).each do |e|
      if n % (p**e) == 0
        ans += 1
        n /= p**e
      else
        break
      end
    end
  end

  puts ans
end