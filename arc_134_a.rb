# ARC134 A
def ceil(x, a)
  if x%a == 0
    x / a
  else
    x / a + 1
  end
end

if __FILE__ == $0
  N, L, W = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)

  ans = ceil(a[0], W)
  (N-1).times do |i|
    if a[i] + W < a[i+1]
      ans += ceil(a[i+1] - (a[i] + W), W)
    end
  end

  ans += ceil((a[i+1] - (a[i] + W)), W)
  puts ans
end