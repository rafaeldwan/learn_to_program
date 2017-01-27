require 'pry'

# 1)

them_numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
them_numbers.each {|i| puts i}

# 2)

them_numbers.each do |i| 
    puts i if i > 5 
end

# 3)

odd_numbers = them_numbers.select {|i| i.odd?}

# 4)

them_numbers.push(11).unshift(0)

# 5)
them_numbers.pop
them_numbers.push(3)

# 6)
them_numbers.uniq!
them_numbers.each {|i| puts i}

# 7) Hashes have named indexes

# 8)

this = {}
that = Hash.new

#looks like they ment
this = {:key => "value"}
that = {key: "value"}

# 9)

h = {a:1, b:2, c:3, d:4}

h[:b] == 2
h[:e] = 5

h.each { |i, x| h.delete(i) if x < 3.5 } #book uses h.delete_if { |i, x| x < 3.5}
puts h.inspect

# 10) Yes

hash_array = [{a:1, b:2, c:3, d:4}, {a:1, b:2, c:3, d:4000}]

# 11) Not exactly sure what's being asked. Can't I just get it with gem?

# 12)

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => contact_data[0], "Sally Johnson" => contact_data[1]}

# 13)

puts "Joe Smith's email is #{contacts["Joe Smith"][0]}."
puts "Sally Johnson's phone number is #{contacts["Sally Johnson"][2]}, you dog you."
#binding.pry

# 14) looks like I did 12 differently than intended. 

deets = [:email, :address, :phone]
contacts = {}
data = {}
deets.each do |i| 
    data[i] = contact_data[0].shift
end
puts data
contacts["Joe Smith"] = data
puts contacts

#this took me SOOO long, and I struggled with the challenge.

# 15)

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |x| x.start_with? "s"}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if { |x| x.start_with? "s", "w"}
p arr

# 16)

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

a = a.join " "
a = a.split " "
p a