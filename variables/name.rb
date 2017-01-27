puts "I ALWAYS NEED NAMES. NOW IS WHEN YOU GIVE ME A FIRST NAME."
first_name = gets.chomp
puts "LAST NAME IS ALSO REQUIRED."
last_name = gets.chomp
name = first_name + " " + last_name
puts "THANK YOU SO MUCH #{name.upcase}. I AM FOREVER IN YOUR DEBT."
filename = "names.txt"
File.open(filename, 'a') do |file|
    file.puts name
end
10.times {print name.upcase + ". "}
puts "IT IS A GOOD NAME. I SHALL REMEMBER IT IN ME BITS."