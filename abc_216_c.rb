# 逆順操作 ABC216 C Dif:145
if __FILE__ == $0
  n = gets.split.map(&:to_i)

  ans = ""
  while 0 < N
    if N%2 == 0
      ans = "B" + ans
      n /= 2
    else
      ans = "A" + ans
      n -= 1
    end
  end

  puts ans
end