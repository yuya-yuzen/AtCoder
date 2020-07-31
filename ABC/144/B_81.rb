n = gets.to_i

result = false

if !(n > 81)
	(1..9).each do |i|
		(1..9).each do |j|
			if i * j == n
				result = true
				break
			end
		end
		break if result
	end
end

puts result ? "Yes" : "No"