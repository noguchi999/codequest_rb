# 尺取法1、区間和 ABC229 D Dif:745
if __FILE__ == $0
  s = gets
  K = gets.split.map(&:to_i)

  s = "?{s}"
  N = s.size
  count = Array.new(N).map{[0]}
  (1..N-1).each do |i|
    if s[i] == "X"
      count[i] = count[i-1]
    else
      count[i] = count[i-1] + 1
    end
  end

  ans = 0
  r = 1
  (1..N-1).each do |l|
    while r < N
      period = count[r] - count[l-1]
      if period <= K
        r += 1
      else
        break
      end
    end
    ans = [ans, r-l].max
  end

  puts ans
end