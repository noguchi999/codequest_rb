# Bit全探索3
def calc_or(left, right)
  result = 0
  (left..right-1).each do |i|
    result = result | $a[i]
  end
  result
end

if __FILE__ == $0
  n = gets.to_i
  $a = gets.split(" ").map{|x| x.to_i}

  ans = 2**40
  (1<<n+1).times do |i|
    next if i & 1 == 0 || i>>n & 1 == 0

    partitions = []
    (n+1).times do |shift|
      if i>>shift & 1 == 1
        partitions.push shift
      end
    end

    ans_tmp = 0
    (partitions.size - 1).times do |j|
      ans_tmp = ans_tmp^calc_or(partitions[j], partitions[j+1])
    end
    ans = [ans, ans_tmp].min
  end

  puts ans
end