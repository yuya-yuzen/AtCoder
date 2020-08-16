n = gets.to_i
sums = []
(1..n).each do |i|
    height = i
    width = n / i
    diff = (height - width).abs
    surplus = n - height * width
    sums << diff + surplus
end
puts sums.min
