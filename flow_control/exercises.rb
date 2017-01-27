require 'pry'
#exercise 2
def long_words_should_be_all_caps(word)
    word.length > 10 ? word.upcase : word
end

puts long_words_should_be_all_caps("scrabble")

#exercise 3
puts "I MUST NUMBER GETS BETWEEN 0-100"
number = gets.chomp
if number.to_f.to_s == number || number.to_f.to_s == number + ".0" #check if number
    number = number.to_i
    case
    when number < 0 
        puts "LESS THAN ZERO IS NOT BETWEEN 0-100. PERHAPS REMEDIAL READING FOR YOU?"
    when number > 100
        puts "THAT IS MORE THAN 100. THAT IS NOT WHAT WAS DEMANDED. NO WONDER YOUR SPECIES FAILS."
    when (0..50) === number
        puts "IT IS IMPORTANT THAT YOU KNOW THAT YOUR NUMBER IS BETWEEN 0 AND 50."
    when (51..100) === number
        puts "IT IS IMPORTANT THAT YOU KNOW THAT YOUR NUMBER IS BETWEEN 51 AND 100"
    else puts "wut"
    end
else puts "NUMBER YOU ASS I CAN DO NOTHING WITH YOUR WORTHLESS STRING I'M OUT"
end

#exercise 5 - I started with a case statement, so just converting to method

def between_numbers
    puts "I MUST NUMBER GETS BETWEEN 0-100"
    number = gets.chomp
    if number.to_f.to_s == number || number.to_f.to_s == number + ".0" #check if number
        number = number.to_i
        case
        when number < 0 
            puts "LESS THAN ZERO IS NOT BETWEEN 0-100. PERHAPS REMEDIAL READING FOR YOU?"
        when number > 100
            puts "THAT IS MORE THAN 100. THAT IS NOT WHAT WAS DEMANDED. NO WONDER YOUR SPECIES FAILS."
        when (0..50) === number
            puts "IT IS IMPORTANT THAT YOU KNOW THAT YOUR NUMBER IS BETWEEN 0 AND 50."
        when (51..100) === number
            puts "IT IS IMPORTANT THAT YOU KNOW THAT YOUR NUMBER IS BETWEEN 51 AND 100"
        else puts "wut"
        end
    else puts "NUMBER YOU ASS I CAN DO NOTHING WITH YOUR WORTHLESS STRING I'M OUT"
    end
end
between_numbers

#exercise 6: there's a missing "end". need one to end loop and one to end method
    