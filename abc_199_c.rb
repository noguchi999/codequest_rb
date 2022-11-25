# 文字列操作2 Dif:436 ABC199 C
if __FILE__ == $0
  N = gets.split.map(&:to_i)
  s = gets
  Q = gets.split.map(&:to_i)

  s = "0#{s}"
  S = [s]

  flip = false
  Q.times do |i|
    t, a, b = gets.split.map(&:to_i)

    if t == 1
      if flip == false
        S[a], S[b] = S[b], S[a]
      else
        if a <= N
          a += N
        else
          a -= N
        end

        if b <= N
          b += N
        else
          b -= N
        end
        S[a], S[b] = S[b], S[a]
      end
    else
      if flip == true
        flip = false
      else
        flip = true
      end
    end
  end

  s_left = S[1..N+1]
  s_right = S[N+1..]

  ans = []
  if flip == false
    ans = s_left + s_right
  else
    ans = s_right + s_left
  end

  puts ans.join()
end