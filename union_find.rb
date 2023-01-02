class UnionFind
  def initialize(n)
    @n = n
    @parent_size = [-1]*n
  end

  def merge(a, b)
    x = self.leader(a)
    y = self.leader(b)
    return if x == y
    if @parent_size[x].abs < @parent_size[y].abs
      x, y = y, x
    end
    @parent_size[x] += @parent_size[y]
    @parent_size[y] = x
  end

  def same?(a, b)
    self.leader(a) == self.leader(b)
  end

  def leader(a)
    return a if @parent_size[a] < 0
    @parent_size[a] = self.leader(@parent_size[a])
  end

  def size(a)
    @parent_size[self.leader(a)].abs
  end

  def groups
    results = Array.new(@n) {[]}
    @n.times do |i|
      results[self.leader(i)].push i
    end
    results.delete([])
    results
  end
end