# 約数列挙
def divisor_list(n)
  divisor = []

  i = 1
  while i**2 <= n
    if n%i == 0
      divisor.push i
      if i != n/i
        divisor.push n/i
      end
    end
    i += 1
  end
  divisor.sort
end

if __FILE__ == $0
  N = gets.to_i
  ans = divisor_list(N)

  ans.each do |x|
    puts x
  end
end