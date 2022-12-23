# 区間の処理 ABC207 C Dif:397
if __FILE__ == $0
  N = gets.split.map(&:to_i)

  section = []
  N.times do |i|
    t, l, r = gets.split.map(&:to_i)
    if t == 1
      section.push [l, r]
    elsif t == 2
      section.push [l, r - 0.1]
    elsif t == 3
      section.push [l + 0.1, r]
    else
      section.push [l + 0.1, r - 0.1]
    end
  end

  ans = 0
  N.times do |i|
    (i+1..N-1).each do |j|
      il, ir = section[i]
      jl, jr = section[j]

      if [il, jl].max <= [ir, jr].min
        ans += 1
      end
    end
  end

  puts ans
end