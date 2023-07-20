# ARC134 B
if __FILE__ == $0
  N = gets.to_i
  s = gets

  s = s.split(//)
  count = Hash.new(0)

  s.each do |x|
    count[x] += 1
  end
end