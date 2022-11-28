# 期待値・区間和 Dif:485 ABC154 D
if __FILE__ == $0
  N, K = gets.split.map(&:to_i)
  _p = gets.split.map(&:to_i)

  p_ex = []
  N.times do |i|
    p_ex.push((_p[i]+1)/2)
  end

  p_ex_Cum = [p_ex[0]]
  (1..N-1).each do |i|
    p_ex_Cum.push(p_ex_Cum[i-1] + p_ex[i])
  end

  ans = -10**15
  ans_tmp = ans
  (N-K+1).times do |i|
    if i == 0
      ans_tmp = p_ex_Cum[i+K-1]
    else
      ans_tmp = p_ex_Cum[i+K-1] - p_ex_Cum[i-1]
    end
    ans = [ans, ans_tmp].max
  end

  puts ans
end