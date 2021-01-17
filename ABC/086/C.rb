n = gets.to_i
pre_t, pre_x, pre_y = [0, 0, 0]
n.times do
    t, x, y = gets.split.map(&:to_i)
    movement = t - pre_t
    distance = (x - pre_x).abs + (y - pre_y).abs
    if movement < distance
        puts 'No'; exit
    elsif movement > distance
        if (movement.even? && distance.odd?) \
        || (movement.odd? && distance.even?)
            puts 'No'; exit
        end
    end
    pre_t = t; pre_x = x; pre_y = y
end
puts 'Yes'
