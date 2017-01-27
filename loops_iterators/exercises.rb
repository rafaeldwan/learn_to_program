#exercise 2

while true
    puts "I WON'T STOP"
    response = gets.chomp
    break if response == "STOP"
end
puts "FINE."

#exercise 3

array = [1,2,3,4]
array.each_with_index {|i, z| puts "#{z}: #{i}"} 

#exercise 4

def countdown(x)
    if x >= 0
        puts x
        x -= 1
        countdown(x)
    end
end

countdown (10)