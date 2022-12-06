# 文字コード変換 ABC218 B Dif:14
if __FILE__ == $0
  P = gets.split.map(&:to_i)

  ans = ""
  26.times do |i|
    ans += (P[i]+96).chr
  end
end