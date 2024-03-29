class FenwickTree
  def initialize(n)
    @n = n
    @f = Array.new(n).map{[0]}
  end

  def add(i, x)
    i += 1
    while i <= @n
      @f[i-1] += x
      i += i&-i
    end
  end

  def sum_r(r)
    s = 0
    while 0 < r
      s += @f[r-1]
      r -= r&-r
    end
    s
  end

  def sum(l, r)
    self.sum_r(r+1) - self.sum_r(l)
  end

  def select(i)
    self.sum(i, i)
  end
end