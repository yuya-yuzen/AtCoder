n = gets.chomp.to_i
s = gets.chomp
start_pos = -1

if s[0] == "b" && s[-1] == "b"
    start_pos = 0
elsif s[0] == "a" && s[-1] == "c"
    start_pos = 1
elsif s[0] == "c" && s[-1] == "a"
    start_pos = 2
end

start_pos = -1 if s.length.even?

def new_procedure_count(s, left, right, procedure_count)
    if s[0] == left && s[-1] == right
        return procedure_count + 1
    else
        return -1
    end
end

def k(s, start_pos)
    procedure_count = 0
    while s.length > 1
        break if procedure_count == -1
        case start_pos
        when 0
            procedure_count = new_procedure_count(s, "b", "b", procedure_count)
            start_pos = 2
        when 1
            procedure_count = new_procedure_count(s, "a", "c", procedure_count)
            start_pos = 0
        when 2
            procedure_count = new_procedure_count(s, "c", "a", procedure_count)
            start_pos = 1
        end
        s.slice!(0)
        s.chop!
    end
    return procedure_count
end

if start_pos == -1
    puts -1
else
    result = k(s, start_pos)
    if result != -1
        puts result
    else
        puts -1
    end
end
