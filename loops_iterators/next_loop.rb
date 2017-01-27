i = 0
loop do
    i += 2
    next if i == 4  #skips the rest of the code in this iteration
    puts i
    break if i == 10
end