n = gets.chomp.to_i
a = gets.chomp.split

software_has_bug_count = 0
total_bug_count = 0.0

a.each do |bug|
    if bug != "0"
        software_has_bug_count += 1
        total_bug_count += bug.to_i
    end
end

puts (total_bug_count / software_has_bug_count).ceil
