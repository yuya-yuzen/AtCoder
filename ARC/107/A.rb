a, b, c = gets.chomp.split.map(&:to_i)
def product num
    return (num*(num+1))/2
end
puts product(a) * product(b) * product(c) % 998244353
