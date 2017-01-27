loop do 
    puts "Again?"
    answer = gets.chomp
    break if answer.upcase != "Y"
end