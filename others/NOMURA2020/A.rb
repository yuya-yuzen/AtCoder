h1, m1, h2, m2, k = gets.split.map(&:to_i)
m1 += h1 * 60
m2 += h2 * 60
m = m2 - m1 - k
puts k > 0 ? m : 0
