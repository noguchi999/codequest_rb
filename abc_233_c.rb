# 全探索2 ABC233 C Dif:604
if __FILE__ == $0
  N, X = gets.split.map(&:to_i)
  L = []
  a = []
  N.times do |i|
    tmp = gets.split.map(&:to_i)
    L.push tmp[0]
    a.push tmp[1..-1]
  end

  pro = [1]
  N.times do |i|
    tmp_pro = []
    a[i].each do |ai|
      pro.each do |_p|
        tmp_pro.push ai*_p
      end
    end
    pro = tmp_pro
  end

  ans = pro.count(X)
  puts ans
end