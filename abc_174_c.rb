# 鳩の巣原理
if __FILE__ == $0
  K = gets.to_i

  remain = 0
  (1..K).each do |i|
    remain = remain * 10 + 7
    if remain % K == 0
      puts i
      exit
    end
    remain %= K
  end

  puts -1
end