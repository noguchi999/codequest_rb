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
      s_list.push([now, count])
      now = S[i]
      count = 1
    end
  end

end