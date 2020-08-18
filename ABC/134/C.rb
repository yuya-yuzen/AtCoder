n = gets.to_i
a = []
n.times do |i|
  num = gets.to_i
  a << num
end

a_sorted = a.sort
max = a_sorted[n-1]
second = a_sorted[n-2]
max_second = max == second

if max_second
  n.times do 
    puts max
  end
else
  n.times do |i|
    if a[i] != max
      puts max
      next
    elsif a[i] != second
      puts second
      next
    else
      n.times do |j|
        last = a_sorted[n-(j+1)]
        if a[i] != last || n-(j+1) == 0
          puts last
          break
        end
      end
    end
  end
end