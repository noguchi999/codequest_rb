# ABC237 C
if __FILE__ == $0
  S = gets
  a_front = 0

  S.size.times do |i|
    if S[i] == "a"
      a_front += 1
    else
      break
    end
  end

  a_back = 0
end