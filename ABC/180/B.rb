n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

manhattan = 0
euclidean = 0
chebyshev = 0
x.each do |i|
    i = i.abs
    manhattan += i
    euclidean += i**2
    chebyshev = i if i > chebyshev
end

puts manhattan
puts euclidean**0.5
puts chebyshev
