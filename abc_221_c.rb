# bit全探索 ABC221 C Dif:379
if __FILE__ == $0
  N = gets

  ans = 0
  (1<<N.size).times do |bitnum|
    A = []
    B = []

    N.size.times do |shift|
      if bitnum>>shift & 1==0
        A.push N[shift]
      else
        B.push N[shift]
      end
    end
    next if A == [] || B == []

    A.reverse!
    B.reverse!

    A_join = A.join
    B_join = B.join

    tmp_ans = A_join.to_i * B_join.to_i
    ans = [ans, tmp_ans].max
  end

  puts ans
end