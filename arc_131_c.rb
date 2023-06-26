# ARC131 C
if __FILE__ == $0
  N = gets.to_i
  A = gets.split.map(&:to_i)

  axor = 0
  A.times do |x|
    axor ^= x
  end
end