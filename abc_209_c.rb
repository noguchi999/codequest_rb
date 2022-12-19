# ソート2 ABC209 C Dif:285
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  c = gets.split.map(&:to_i)

  mod = 10**9+7
  c.sort!

  ans = 1
  N.times do |i|
    if c[i] - i == 0
      puts 0
      exit
    end

    ans *= c[i] - i
    ans %= mod
  end

  puts ans
end