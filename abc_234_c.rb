# ABC234 C
if __FILE__ == $0
  K = gets.to_i

  k_bit = K.to_i(2)
  ans = k_bit.to_s.replace("1", "2")
  puts ans[1..-1]
end
