# for文 ABC204 B Dif:9
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  ans = 0
  A.times do |x|
    ans += [0, x-10].max
  end

  puts ans
end