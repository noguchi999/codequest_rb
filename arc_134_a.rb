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
end