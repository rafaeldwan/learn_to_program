def add_three(number)
   return number + 3 #ruby will return the last evaluated result so this "return" is unneccesary
end

returned_value = add_three(4)
puts returned_value

def add(a, b)
   a + b
end

def subtract(a, b)
   a - b
end

def multiply(num1, num2)
   num1 * num2
end

multiple(add(20, 45), subtract(80, 10))
add (sutract(80, 10), multiply(subtract(20, 6), add (30, 5)))