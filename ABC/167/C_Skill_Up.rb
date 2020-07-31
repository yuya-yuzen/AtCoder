nmx = gets.chomp.split
n = nmx[0].to_i
m = nmx[1].to_i
x = nmx[2].to_i

ca = []
n.times do
	input = gets.chomp.split
	m.times do |i|
		input[i] = input[i].to_i
	end
	ca << input
end
ca.sort!

result = false
c = 0
i = 1
while !result
	ca_c = ca.combination(i).to_a

	ca_c.length.times do |h|
		skills = Array.new(0, m+1)

		ca_c[h].each do |ca_c_i|
			ca_c_i.length.times do |j|
				skills[j] += ca_c_i[j]
			end
		end

		result_k = true

		m.times do |k|
			if skills[k+1] < x
				result_k = false
				break
			end
		end

		if result_k
			result = true
			c = skills.first
		end
	end

	i += 1
end

puts c
