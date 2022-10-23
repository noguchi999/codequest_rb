def quick_sort(n)
  return n if n.size <= 1

  base = n.shift
  lower = []
  upper = []

  n.each do |i|
    if i < base
      lower.push i
    else
      upper.push i
    end
  end

  quick_sort(lower) + [base] + quick_sort(upper)
end

if __FILE__ == $0
  n = gets.split(" ").map{|x| x.to_i}
  p quick_sort(n)
end