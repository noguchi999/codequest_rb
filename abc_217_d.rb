# 想定解multiset ABC217 D Dif:802
require "fenwick_tree"

def nibutan_x(cut, x, l, r)
  while 1 < r - l
    c = (l + r) / 2
    if cut[c] < x
      l = c
    else
      r = c
    end
  end
  l, r
end

def nibutan_l(cut, x, l, r)
  while 1 < r - l
    c = (l + r) / 2
    if 1 <= @fenwick.sum(c, x)
      l = c
    else
      r = c
    end
  end

  if @fenwick.sum(r, x) == 1
    return r
  else
    return l
  end
end

def nibutan_r(cut, x, l, r)
  while 1 < r - l
    c = (l + r) / 2
    if 1 <= @fenwick.sum(x, c)
      r = c
    else
      l = c
    end
  end

  if @fenwick.sum(x, l) == 1
    return l
  else
    return r
  end
end

if __FILE__ == $0
  L, Q = gets.split.map(&:to_i)
  query = []
  cut = []

  Q.times do |i|
    c, x = gets.split.map(&:to_i)
    query.push [c, x]
    if c == 1
      cut.push x
    end
  end

  cut.push 0
  cut.push L
  cut.sort!
  N = cut.size
  cut_index = {}
  N.times do |i|
    cut_index[cut[i]] = i
  end

  @fenwick = FenwickTree.new(N)
  @fenwick.add(0, 1)
  @fenwick.add(N-1, 1)

  query.each do |c, x|
    if c == 1
      @fenwick.add(cut_index[x], 1)
    else
      l_x, r_x = nibutan_x(cut, x, 0, N-1)
      l_index = nibutan_l(cut, x, 0, x)
      r_index = nibutan_r(cut, x, x, N-1)

      puts cut[r_index] - cut[l_index]
    end
  end
end