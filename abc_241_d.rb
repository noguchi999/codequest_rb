# ABC241 D
require 'fenwick_tree'

def nibutan_left(x_index, k)
  l = 0
  r = x_index
  while 1 < r - l
    m = (l + r) / 2
    if FT.sum(m, x_index) < k
      l = m
    else
      r = m
    end
  end

  if k <= FT.sum(l, x_index)
    l
  elsif k <= FT.sum(r, x_index)
    r
  else
    -1
  end
end

def nibutan_right(x_index, k)
  l = x_index
  r = N - 1
  while 1 < r - l
    m = (l + r) / 2
    if k <= FT.sum(x_index, m)
      r = m
    else
      l = m
    end
  end

  if k <= FT.sum(x_index, l)
    l
  elsif k <= FT.sum(x_index, r)
    r
  else
    -1
  end
end

if __FILE__ == $0
  Q = gets.split.map(&:to_i)

  queries = []
  _set = Set.new
  Q.times do |i|
    tmp = gets.split.map(&:to_i)
    queries << tmp
    _set << tmp[1]
  end

  N = _set.size
  _set = _set.to_a.sort
  conv = {}
  _set.size.times do |i|
    conv[_set[i]] = i
  end

  FT = FenwickTree.new(N)
  Q.times do |i|
    if queries[i][0] == 1
      x = queries[i][1]
      FT.add(conv[x], 1)
    elsif queries[i][0] == 2
      x = queries[i][1]
      k = queries[i][2]
      if FT.sum(0, conv[x]) < k
        puts -1
      else
        m = nibutan_left(conv[x], k)
        puts _set[m]
      end
    else
      x = queries[i][1]
      k = queries[i][2]
      if FT.sum(conv[x], N - 1) < k
        puts -1
      else
        m = nibutan_right(conv[x], k)
        puts _set[m]
      end
    end
  end
end