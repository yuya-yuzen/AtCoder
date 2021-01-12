n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
inner_product = 0
n.times { |i| inner_product += a[i] * b[i] }
puts inner_product == 0 ? 'Yes' : 'No'
