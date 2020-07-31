# N 以下の平方数のうち、最大のものを求めてください。
# ただし、平方数とは、ある整数の 2 乗として表せる整数のことを指します。

n = gets.to_i

max = 0

n.times do |i|
  square = (i + 1) ** 2
  unless n >= square
    break
  end
  max = square
end

puts max
