# 周期性 ABC220 C Dif:119
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  A = gets.split.map(&:to_i)
  X = gets.split.map(&:to_i)

  a_sum = A.sum
  quo = X / a_sum
  k = N * quo
  b_sum = a_sum * quo

  N.times do |i|
    b_sum += A[i]
    k += 1
    if X < b_sum
      puts k
      exit
    end
  end
end