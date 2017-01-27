#exercise 1

def lab (string)
   puts "'Lab' is in the word #{string}" if string =~ /lab/i
end

lab "laboratory"
lab "experiment"
lab "Pans Labyrinth"
lab "elaborate"
lab "polar bear"

#exercise 4

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }