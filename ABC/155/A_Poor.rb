# 3�g�̐��ɂ��āA����2���������A�c���1�������ƈقȂ�Ƃ��A
# ����3�g���u���킢�����v�ł���Ƃ����܂��B
# 3�̐���A, B, C���^����̂ŁA����3�g�����킢�����ł����"Yes"���A
# �����łȂ����"No"���o�͂��Ă��������B

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if (a == b && a != c) || (a == c && a != b) || (b == c && a != b)
  puts "Yes"
else
  puts "No"
end
