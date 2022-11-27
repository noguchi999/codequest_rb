# 最小と最大 Dif:483 ABC195 B
if __FILE__ == $0
  A, B, W = gets.split.map(&:to_i)

  W_g = W*1000

  min_ans = 10**15
  max_ans = 10**15

  (1..10**6+9).each do |x|
    if A*X <= W_g <= B*x
      min_ans = [min_ans, x].min
      max_ans = [min_ans, x].max
    end
  end

  if min_ans == 10**15
    puts "UNSATISFIABLE"
  else
    puts "#{max_ans} #{max_ans}"
  end
end