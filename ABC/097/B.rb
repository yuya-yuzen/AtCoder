x = gets.to_i
exponentials = [1]
(2..40).each do |i|
    (2..100).each do |j|
        exponential = i ** j
        if exponential > x
            break
        else
            exponentials << exponential
        end
    end
end
max = 0
exponentials.sort.each do |exponential|
    if max > x
        break
    end
    max = exponential
end
puts max
