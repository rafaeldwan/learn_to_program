require "pry"

#exercise 1
puts "Rafael" + " Dwan"

#exercise 2
=begin number = gets.chomp.to_i
thousands = number/1000
puts thousands
hundreds = (number - (thousands*1000)) / 100
puts hundreds
tens = (number - ((thousands*1000) + (hundreds * 100))) /10
puts tens
ones = number % 10
puts ones

#and the book does 

hundreds = number % 1000 / 100
tens = number % 100 / 10
ones = number % 10


#exercise 3

movies = {
"Squantlee Grander": 2032,
"Magnavox Crises Center": 2111,
"Hand Jive Follies": 2020,
"...and Grogrer": 2089
}
movies.each {|i, x| puts x}

#exercise 4
movies_array = []
movies.each do |i, x|
   movies_array.push x
end
#binding.pry
puts movies_array
=end
#exercise 5
for x in (5..8)
   y=x
   result = y
   while y > 1 do
      result = result * (y-1)
      y -= 1
   end
   x -= 1
   puts result
end
      
#exercise 6

x = 1.11
y = 2.22
z = '3'.33

puts #{x*x}\n#{y*y}\n#{z*z}"

#exercise 7 - There's a ) where the program says there should be a } on line 16 and it's mucking everything up