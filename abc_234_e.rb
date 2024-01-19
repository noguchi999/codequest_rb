# ABC234 E
def make_num(a, d, n)
  num = ""
  n.times do |i|
    x = a + d * i
    if x.between?(0, 9)
      num += x.to_s
    else
      return -1
    end
  end

  num.to_i
end

if __FILE__ == $0
  num_list = []

  (1..10).each do |a|
    (-9..10).each do |b|
      (1..19).each do |n|
        num = make_num(a, b, n)
        if num != -1
          num_list << num
        end
      end
    end
  end

  num_list.sort!

  X = gets.to_i
  i = 0
  while num_list[i] < X
    i += 1
  end

  puts num_list[i]
end
