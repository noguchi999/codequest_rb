# 数学問題1 Dif:274 ABC181 C
if __FILE__ == $0
  _n = gets.split.map(&:to_i)

  remain_1 = false
  remain_2 = false
  remain_all = _n%3

  _n = _n.to_s
  _n.size.times do |i|
    digit_num = _n[i].to_i
    if digit_num%3 == 1
      remain_1 = true
    elsif digit_num%3 == 2
      remain_2 = true
    end
  end

  if remain_all == 0
    puts 0
  elsif remain_all == 1
    if remain_1
      if _n.size <= 1
        puts -1
      else
        puts 1
      end
    else
      if _n.size <= 2
        puts -1
      else
        puts 2
      end
    end
  elsif remain_all == 2
    if remain_2
      if _n.size <= 1
        puts -1
      else
        puts 1
      end
    else
      if _n.size <= 2
        puts -1
      else
        puts 2
      end
  end
end