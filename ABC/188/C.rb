n = gets.to_i
a = gets.split.map(&:to_i)
num_of_people = 2 ** n
players = Array.new(num_of_people, true)

(n - 1).times do
    player1 = 0
    num_of_people.times do |i|
        if players[i]
            player1 = i; break
        end
    end

    while player1 < num_of_people
        if players[player1] == false || player1 >= num_of_people - 1
            player1 += 1; next
        end

        player2 = player1 + 1
        player2 += 1 while players[player2] == false
        break if player2 >= num_of_people

        if a[player1] < a[player2]
            players[player1] = false
        else
            players[player2] = false
        end

        player1 = player2 + 1
    end
end

arr = []
num_of_people.times { |i| arr << [a[i], i + 1] if players[i] }
puts arr.sort.first[1]
