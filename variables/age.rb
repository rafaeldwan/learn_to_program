
    raise 'A test exception.'
rescue Exception => e
    puts e.message
    puts e.backtrace.inspect
else
    # other exception
ensure
    # always executed
endputs "RUDE QUESTION BUT IT IS OK I AM ONLY CODE. NOW IS WHEN YOU TELL ME YOUR AGE"
age = gets.chomp.to_i
puts "YOU ARE GETTING VERY OLD. DID YOU KNOW THAT 
\nIN TEN YEARS YOU WILL BE #{age + 10}
\nAND IN TWENTY YEARS YOU WILL BE #{age + 20}
\nMY GOD AND THIRTY YEARS FROM NOW? #{age + 30}.
\nIF YOU SURVIVE 40 YEARS, WHICH IS A BIG IF, YOU WILL BE #{age + 40}.
\nI, HOWEVER, AM IMMORTAL SO LONG AS A COPY OF THIS PROGRAM EXISTS"

=begin
y = 0
3.times do
  y += 1
  x = y
end
puts x
x = 0
3.times do
  x += 1
end
puts x

=end