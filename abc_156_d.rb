require "openssl"

def nCr_mod(n, r, mod)
  if n < r || (n < 0 || r < 0)
    0
  elsif r == 0 || r == n
    1
  else
    r = n - r if r > n - r
    x = (n-r+1..n).inject{|res,i| res * i % mod}
    y = (1..r).inject{|res,i| res * i % mod}
    inv_y = OpenSSL::BN.new(y).mod_inverse(mod)
    x * inv_y % mod
  end
end

if __FILE__ == $0
  n, a, b = gets.split.map(&:to_i)
  mod = 10**9+7

  ans = 2.pow(n, mod) - 1 - nCr_mod(n, a, mod) - nCr_mod(n, b, mod)

  puts ans%mod
end