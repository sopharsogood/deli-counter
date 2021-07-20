# Write your code here.
katz_deli = []

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
    if katz_deli.size == 0
        puts "There is nobody waiting to be served!"
    else
        name = katz_deli.shift
        puts "Currently serving #{name}."
    end
end

def line(katz_deli)
    if katz_deli.size == 0
        puts "The line is currently empty."
    else
        current_line = katz_deli
        katz_deli.each_with_index do |name, index|
            current_line[index] = "#{index + 1}. #{name}"
        end
        line_concatenated = current_line.join(" ")
        puts "The line is currently: #{line_concatenated}"
    end
end