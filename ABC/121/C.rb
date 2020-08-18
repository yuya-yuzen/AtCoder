nm = gets.chomp.split
n = nm[0].to_i
m = nm[1].to_i

ab_a = []
n.times do
  ab = gets.chomp.split
  2.times do |i|
    ab[i] = ab[i].to_i
  end
  ab_a << ab
end

ab_a.sort!

money = 0
drinks = 0
m.times do |i|
  price = ab_a[i][0]
  drink = ab_a[i][1]

  if drinks + drink < m
    drinks += drink
    money += (drink * price)
  else
    money += ((m - drinks) * price)
    break
  end
end

puts money