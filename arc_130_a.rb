# ARC130 A
if __FILE__ == $0
  N = gets.chomp.split().map(&:to_i)
  S = gets.chomp.split()

  s_list = []
  now = S[0]
  count = 1
  (1..N-1).each do |i|
    if S[i] == now
      count += 1
    else
      s_list << count
      now = S[i]
      count = 1
    end
  end
  s_list << count

  ans = 0
  s_list.each do |s|
    ans += s * (s + 1) / 2
  end

  puts ans
end