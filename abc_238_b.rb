# ABC238 B
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)

  angle = []
  now = 0

  N.times do |i|
    now += A[i]
    angle.push now
  end

  N.times do |i|
    angle[i] %= 360
  end

  angle.sort!
  angle = [0] + angle + [360]

  ans = 0
  (1..N+1).each do |i|
    ans = [ans, angle[i]-angle[i-1]].max
  end

  puts ans
end