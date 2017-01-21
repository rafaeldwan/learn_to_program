number = gets.chomp.to_i
thousands = number/1000
puts thousands
hundreds = (number - (thousands*1000)) / 100
puts hundreds
tens = (number - ((thousands*1000) + (hundreds * 100))) /10
puts tens
ones = number % 10
puts ones

#and the book does 