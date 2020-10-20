n = gets.chomp.to_i

if n >= 3600
    print 0 if n / 3600 < 10
    print n / 3600
    n %= 3600
else
    print "00"
end
print ":"

if n >= 60
    print 0 if n / 60 < 10
    print n / 60
    n %= 60
else
    print "00"
end
print ":"

print 0 if n < 10
print n
print "\n"
