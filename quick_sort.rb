def quick_sort(n, base)
  if $result.size == 0
    $result.push base
  elsif $result[0] >= base
    $result.unshift base
  else
    $result.push base
  end

  lower = []
  upper = []

  n.each do |i|
    if i < base
      lower.push i
    else
      upper.push i
    end
  end

  if lower.size == 1
    if $result[0] >= lower[0]
      $result = lower + $result
    else
      $result = $result + lower
    end
  end

  if upper.size == 1
    if $result[0] >= upper[0]
      $result = upper + $result
    else
      $result = $result + upper
    end
  end
  return $result if $result.size == LIMIT

  puts "#{n} #{base} #{lower} #{upper} #{$result} "

  if lower.size > 1
    new_base = lower.pop
    quick_sort(lower, new_base)
  end

  if upper.size > 1
    new_base = upper.shift
    quick_sort(upper, new_base)
  end

  $result
end

if __FILE__ == $0
  $result = []
  n = gets.split(" ").map{|x| x.to_i} + [2**64]
  LIMIT = n.size

  base = n[0]
  $result = quick_sort(n[1..], base)

  p $result
end