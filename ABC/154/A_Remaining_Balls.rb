# ������S�̏����ꂽ�{�[����A�A������ T�̏����ꂽ�{�[���� B����܂��B
# �����N�́A������ U�̏����ꂽ�{�[���� 1�I��Ŏ̂Ă܂����B
# ������ S,T�̏����ꂽ�{�[�������ꂼ�ꉽ�c���Ă��邩���߂Ă��������B

st = gets.chomp.split
s = st[0]
t = st[1]

ab = gets.chomp.split
a = ab[0].to_i
b = ab[1].to_i

u = gets.chomp

case u
when s
  a -= 1
when t
  b -= 1
end

puts a.to_s + " " + b.to_s
