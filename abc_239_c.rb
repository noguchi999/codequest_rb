# ABC239 C
def judge(x3, y3)
  if (x2 - x3)**2 + (y2 - y3)**2 == 5
    puts "Yes"
    exit
  end
end

if __FILE__ == $0
  x1, y1, x2, y2 = gets.split.map(&:to_i)
  [-1, 1].each do |i|
    [-2, 2].each do |k|
      judge(x1+i, y1+k)
      judge(x1+k, y1+i)
    end
  end
  puts "No"
end