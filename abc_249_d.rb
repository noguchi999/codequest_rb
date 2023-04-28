# ABC249 D
if __FILE__ == $0
  N = gets.chomp.to_i
  A = gets.chomp.split.map(&:to_i)

  _count = Array.new(10**6).map{0}
  N.times do |i|
    _count[A[i]] += 1
  end

  ans = 0
  N.times do |i|
    aj = 1
    while aj**2 <= A[i]
      if A[i] % aj == 0
        ak = A[i] / aj
        if aj == ak
          ans += _count[aj] * _count[ak]
        else
          ans += _count[aj] * _count[ak]*2
        e
        end
      end
      aj += 1
    end
  end

  puts ans
end