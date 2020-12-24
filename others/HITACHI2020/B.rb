# あなたは、冷蔵庫と電子レンジを買うために、とある家電量販店に来ました。
# この家電量販店では、 A 種類の冷蔵庫と B 種類の電子レンジが販売されています。 
# i 番目( 1≤i≤A )の冷蔵庫の値段は ai 円であり、 j 番目( 1≤j≤B )の電子レンジの値段は bj 円です。
# また、あなたは M 種類の割引券を所持しており、 i 番目 ( 1≤i≤M )の割引券では、
# xi 番目の冷蔵庫 と yi 番目の電子レンジを同時に買うと、 支払総額が ci 円安くなります。
# ただし、複数の割引券を同時に使うことはできません。
# さて、あなたは冷蔵庫と電子レンジをちょうど 1 台ずつ買おうと思っています。
# かかる金額の最小値を求めてください。

abm = gets.chomp.split
a = abm[0].to_i
b = abm[1].to_i
m = abm[2].to_i

a_array = gets.chomp.split
a.times do |i|
    a_array[i] = a_array[i].to_i
end

b_array = gets.chomp.split
b.times do |i|
    b_array[i] = b_array[i].to_i
end

xyc_array = []
m.times do
    xyc = gets.chomp.split
    3.times do |i|
        xyc[i] = xyc[i].to_i
    end
    xyc_array << xyc
end

prices = [a_array.min+b_array.min]

m.times do |i|
    prices << a_array[xyc_array[i][0]-1] + b_array[xyc_array[i][1]-1] - xyc_array[i][2]
end

puts prices.min