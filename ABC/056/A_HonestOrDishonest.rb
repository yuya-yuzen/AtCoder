ab = gets.chomp.split
a = ab[0]
b = ab[1]
case a
when "H"
    puts b == "H" ? "H" : "D"
when "D"
    puts b == "H" ? "D" : "H"
end
