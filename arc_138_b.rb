# ARC138 B
if __FILE__ == $0
  N = gets.to_i
  A = gets.split.map(&:to_i)

  flip_count = 0
  while 0 < A.size
    if flip_count.even?
      if A.last == 0
        A.pop
      elsif A.first == 0
        A.shift
        flip_count += 1
      else
        puts "No"
        exit
      end
    end
    flip_count += 1
  end
end