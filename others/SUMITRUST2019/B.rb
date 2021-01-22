n = gets.to_i
(1..n).each do |i|
    price_without_tax = (i * 1.08).to_i
    if price_without_tax == n
        puts i
        exit
    end
end
puts ':('
