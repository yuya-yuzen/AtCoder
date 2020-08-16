# N  個の整数 a1,a2,..,aN が与えられます。えび君はこれらを書き換えて全て同じ整数にしようとしています。
# 各ai(1≦i≦N)は高々一回しか書き換えられません(書き換えなくても良い)。
# 整数xを整数yに書き換えるとき、コストが(x−y)2かかります。
# 仮にai=aj(i≠j)だとしても、ひとつ分のコストで同時に書き換えることは出来ません(入出力例2 を参照)。
# えび君が目的を達成するのに必要なコストの総和の最小値を求めてください。

n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

a_each_kinds = []
a.each do |num|
    if !a_each_kinds.include?(num)
        a_each_kinds << num
    end
end

if a_each_kinds.length == 1
    puts 0
else
    costs = []
    (-100..100).each do |num|
        cost = 0
        n.times do |i|
            cost += (a[i] - num) ** 2
        end
        costs << cost
    end
    puts costs.min
end