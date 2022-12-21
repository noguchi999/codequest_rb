# シミュレーション1 ABC214 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  S = gets.split.map(&:to_i)
  T = gets.split.map(&:to_i)

  time = [10**15]*N
  N.times do |i|
    _next = (i+1)%N
    time[_next] = [T[_next], time[i]+S[i]].min
  end

  N.times do |i|
    _next = (i+1)%N
    time[_next] = [time[_next], time[i]+S[i]].min
  end

  N.times do |i|
    puts time[i]
  end
end