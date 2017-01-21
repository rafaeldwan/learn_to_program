require "pry"

=begin

puts "Yo dawg, what\'s your handle kid?"
firstName=gets.chomp #chomp takes off the hard return

puts "Sick, sick. What about your middle name?"
midName=gets.chomp
puts "I have no problem with that. " + midName + " is a perfectly servicable middle name. And your last name would be?"
finalName=gets.chomp
fullName=firstName+" "+midName+" "+finalName
puts 'Yo I heard of you ' + fullName + '! I heard you have much game.'
puts 'That true, '+ firstName+'?'

puts 'You got game? What\'s your favorite number?'
favoriteNum=gets.chomp
puts "Word, word, #{favoriteNum} is a fucking fantastic number. However, I have to say that #{(favoriteNum.to_i+1).to_s} is clearly a superior number, my cousin."

#puts self

puts "Did you know there are #{firstName.length.to_s} characters in your first name, brodly? Remember that."
puts "Also, at the same time, it's important you know that there are #{(firstName.length+midName.length+finalName.length).to_s} characters in your full name for some reason."

puts "THIS IS ANGRY BOSS. WHAT DO YOU WANT OF ANGRY BOSS?"
want=gets.chomp
puts "WHADDAY MEAN, \"#{want.upcase}\"?!? YOU'RE FIRED!!!"

lineWidth=50
puts ("Table of contents".center(lineWidth))
puts ("Chapter 1: Getting Started".ljust(lineWidth/2)+"page 1".rjust(lineWidth/2))
puts ("Chapter 2: Numbers".ljust(lineWidth/2)+"page 9".rjust(lineWidth/2))
puts ("Chapter 3: Letters".ljust(lineWidth/2)+"page 13".rjust(lineWidth/2))

puts 'What do your name?'
name = gets.chomp

if name == name.capitalize
    puts "Alright then, you are the good with the English, #{name}"
else puts "#{name}? You mean #{name.capitalize}, right? ANSWER ME."
    reply = gets.chomp
    if reply.downcase == 'yes'
        puts 'Hmmph! OK! YOU IS LEARNING, YOU.'
    else
        puts 'ASSHOLE. ASSSSHOOOOOOOOOOLE'
    end
end

=begin
input = ''
while input != 'bye'
    puts input
    input = gets.chomp
end
puts "Come again soon!"
=end
=begin 

#more elegant way of doing the same thing:
while true
    input = gets.chomp
    puts input
    if input == 'bye'
        break
    end
end

puts "Buhbye!"

while true
    puts "IS TIME TO GIVE ME NAME, YOU. WHAT IT DO?"
    name=gets.chomp
    if name.capitalize == "Rafael" || name.capitalize == 'Tiana'
        puts "You. I like you."
        break
    else
        puts "THAT IS THE WRONG NAME TRY AGAIN SUKAH"
    end
end

bottle=99
while bottle != 2
    puts "#{bottle.to_s} bottles of beer on the wall, #{bottle.to_s} bottles of beer"
    bottle -= 1
    puts "You take one down, pass it around, #{bottle.to_s} bottles of beer on the wall"
end
puts "2 bottles of beer on the wall, 2 bottles of beer"
puts "You take one down, pass it around, 1 bottle of beer on the wall."
puts "1 bottle of beer on the wall, 1 bottle of beer"
puts "You take it down, pass it around, ain't no more bottles of beer on the wall"

puts "COME SIT ON GRANDMAS LAP"
response=gets.chomp
while true
    if response != response.upcase
        puts "HUH?!? SPEAK UP DEARY?"
        response=gets.chomp
    elsif response=="BYE"
        puts "WHAT'S THAT? THESE OLD EARS"
        response=gets.chomp
        if response=="BYE"
           puts "YOU'RE REALLY GOING TO HAVE TO SPEAK UP, MY LOVE"
           response=gets.chomp
           if response == "BYE"
               puts "GOODBYE SWEETHEART. CALL ME SOMETIME."
               break
           end
        end
    else
       puts "NO, NOT SINCE #{rand(1900..2017)}" 
       response=gets.chomp
    end
end

puts "First year?"
year1=gets.chomp
puts "And the second?"
year2=gets.chomp
iterator=year1.to_i
puts "These are leap years:"
while iterator <= year2.to_i
=begin
    if iterator%100==0
        if iterator%400==0
            puts iterator
        end
    elsif iterator%4==0
        puts iterator
    end
=end
=begin
#more elegant:
    if iterator%4==0
        if iterator%100!=0||iterator%400==0
            puts iterator
        end
    end
    iterator+=1
end

#Let's get into arrays! and each loops!

languages = ['English', 'Norwegian', 'Ewok']

languages.each { |lang| puts "I love #{lang}! \nDon\'t you?" }
puts 'And also Dalek'
4.times {print '*crickets*'}
print "\n"
puts languages

this_one=0
words_array = []
while true
  puts "THIS ONE HUNGERS FOR WORDS. FEED THIS ONE. DO NOT AND THIS ONE DIES
  AND YOU MAY EXAMINE THE WORDS THAT MAKE THIS ONE'S CORPSE
  IN ALPHABETICAL ORDER."
  word=gets.chomp
  if word != ""
    words_array[this_one]=word
    this_one += 1
  else
    break
  end
end
puts words_array.sort

contents=[["Getting Started","1"],
         ["Numbers","9"],
         ["Letters","13"]]
lineWidth=54
puts ("Table of contents".center(lineWidth))
chap_num=1
#lineWidth/=2
contents.each do |i|
  left_side = "Chapter #{chap_num}: #{i[0]}"
  right_side = "Page #{i[1].to_s}"
  puts left_side.ljust(lineWidth/2) + right_side.rjust(lineWidth/2)
  chap_num+=1
end

#yay custom methods!
def sassy_moo
  puts "moooooooo bitch"
end
sassy_moo

def fancy_moo how_many_moos
  puts 'mooooooo... '*how_many_moos
end

fancy_moo 6
x = fancy_moo 66
puts x


def favorite_food name
  if name == 'Lister'
    return "vindaloo"
  end
  if name == "Rimmer"
    return 'mashed potatoes'
  end
  'hard to say...maybe fried plantain?'
end

def favorite_drink name
  if name == 'Jean-Luc'
    'tea, Earl Grey, hot'
  elsif name == 'Kathryn'
    'coffee, black'
  else 
    'perhaps...horchata?'
  end
end
puts favorite_food('Rimmer')
puts favorite_food('Lister')
puts favorite_food('Cher')
puts favorite_drink('Kathryn')
puts favorite_drink('Oprah')
puts favorite_drink('Jean-Luc')

def ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no')
      if reply == 'yes' 
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no"'
    end
  end
end
  
wets_bed = ask 'Do you wet the bed, you big baby you?'
puts wets_bed

#roman numberl problem -- partially solved, inelegant

def tens numeral
  if numeral < 50
    if numeral%10==0
      puts "X" * (numeral/10)
    elsif ((numeral / 5).to_i) % 2 != 0
      puts "X" * ((numeral / 10).to_i) + "V" + "I" * (numeral%5)
    elsif
      numeral - (((numeral / 10).to_i) * 10) == 4
      puts "X" * ((numeral / 10).to_i) + "IV"
    elsif
      puts "X" * ((numeral / 10).to_i) + "I" * (numeral%10)
    end
  else
    print "L"
    numeral-=50
    if numeral%10==0
      print "X" * (numeral/10)
    elsif ((numeral / 5).to_i) % 2 != 0
      print "X" * ((numeral / 10).to_i) + "V" + "I" * (numeral%5)
    else
      print "X" * ((numeral / 10).to_i) + "I" * (numeral%10)
    end
  end
end
def hundreds num
  if num / 500 >= 1
    print "D"
    num-=500
  end
  print "C" * (num/100).to_i
end
def roman numeral
  if numeral>3000
    puts "too large!"
  elsif numeral == 4
    puts "IV" 
  elsif numeral < 5
    puts "I" * numeral
  elsif numeral < 10
    puts "V" + "I" * (numeral%5)
  elsif numeral<100
    tens numeral
  elsif numeral<1000
    hundreds numeral
    numeral -= ((numeral/100).to_i)  * 100
    tens numeral
    puts ""
  else 
    print "M" * (numeral/1000).to_i
    numeral -= ((numeral/1000).to_i)  * 1000
    hundreds numeral
    numeral -= ((numeral/100).to_i)  * 100
    tens numeral
    puts ""
  end
end
numeral = gets.to_i
roman numeral



#recursive loop
def ask_recursively question
  puts question
  reply = gets.chomp.downcase
  
  case reply
    when 'yes' then true
    when 'no' then false
    else puts 'Please answer "yes" or "no".'
    ask_recursively question #the magic line
  end
end
ask_recursively "Do you wet the bed?"


def factorial num
  if num < 0  
      return "You can't take the factorial of a negative number!"
  elsif num <= 1 then 
      1
  else 
      num * factorial(num-1)
  end
end

#why did this result in stack too deep when I tried to do it as a case?

puts factorial(3)
puts factorial(30)


# These are just to make the map
# easier for me to read. "M" is
# visually more dense than "o".
M = 'land'
o = 'water'
world = [[o,o,o,o,M,o,o,o,o,o,o],
[o,o,o,o,M,M,o,o,o,o,o],
[o,o,o,o,o,o,o,o,M,M,o],
[o,o,o,M,o,o,o,M,M,M,o],
[o,o,o,M,o,M,M,o,o,o,o],
[o,o,o,o,M,M,M,M,o,o,o],
[M,M,M,M,M,M,M,M,M,M,M],
[o,o,o,M,M,o,M,M,M,o,o],
[o,o,o,o,o,o,M,M,o,o,o],
[o,M,o,o,o,M,o,o,o,o,o],
[o,o,o,o,o,M,o,o,o,o,o]]
def continent_size world, x, y
 #I STRUGGLED FOR SO LONG TO GET THIS HE DOESN'T EVEN HAVE THE ANSWER IN THE BACK
 return 0 if x < 0 || y < 0 || x > (world.length - 1) || y > (world.length - 1) || world[y][x] != 'land'
  # So first we count this tile...
  size = 1
  world[y][x] = 'counted land'
  # ...then we count all of the
  # neighboring eight tiles (and,
  # of course, their neighbors by
  # way of the recursion).
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y )
  size = size + continent_size(world, x+1, y )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x , y+1)
  size = size + continent_size(world, x+1, y+1)
 
  size
end

#Alphabetize all on me own!

#I feel like the following didn't come from me at all, but I understand it
def sort words
  sort_words words, []
end

def sort_words words_to_sort, sorted_words
  return sorted_words if words_to_sort.length<=0
  small_test = words_to_sort.pop
  unsorted = []
  words_to_sort.each do |word|
    if word.downcase < small_test.downcase
      unsorted.push small_test
      small_test = word
    else
      unsorted.push word
    end
  end
  sorted_words.push small_test
  sort_words unsorted, sorted_words
end

def randsort words_to_sort
  shuffled = []
  while words_to_sort.length > 0
    rand_word_index = rand(words_to_sort.length)
    shuffled.push words_to_sort[rand_word_index]
    words_to_sort.delete_at(rand_word_index)
  end
  shuffled
end
words_to_sort = ["aleph", "Bet", "vet", "gimel"]
puts sort(words_to_sort)
puts ""
words_to_sort = ["aleph", "Bet", "vet", "gimel"]
puts randsort(words_to_sort)



def english_number number
  if number < 0 # No negative numbers.
  return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
  return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = ['one', 'two', 'three',
  'four', 'five', 'six',
  'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty',
  'forty', 'fifty', 'sixty',
  'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen',
  'fourteen', 'fifteen', 'sixteen',
  'seventeen' , 'eighteen', 'nineteen']
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number
  
  write = left / 1000000000000 #how many trillyuns left?
  left = left - write * 1000000000000 #subtract off those trillyuns
  if write > 0 
    trillyuns = english_number write
    num_string += trillyuns + " trillyun"
    if left > 0
      # So we don't write 'two hundredfifty-one' ...
      num_string = num_string + ' '
    end
  end
  write = left / 1000000000 #how many billyuns left?
  left = left - write * 1000000000 #subtract off those billyuns
  if write > 0 
    billyuns = english_number write
    num_string += billyuns + " billyun"
    if left > 0
      # So we don't write 'two hundredfifty-one' ...
      num_string = num_string + ' '
    end
  end
  write = left / 1000000 #how many millyuns left?
  left = left - write * 1000000 #subtract off those millyuns
  if write > 0 
    millyuns = english_number write
    num_string += millyuns + " millyun"
    if left > 0
      # So we don't write 'two hundredfifty-one' ...
      num_string = num_string + ' '
    end
  end
  write = left / 1000 #how many thousands left?
  left = left - write * 1000 #subtract off those thousands
  if write > 0 
    thousands = english_number write
    num_string += thousands + " thousand"
    if left > 0
      # So we don't write 'two hundredfifty-one' ...
      num_string = num_string + ' '
    end
  end
  
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one' ...
      num_string = num_string + ' '
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen' , not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour' ...
      num_string = num_string + '-'
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write-1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end

=begin
puts english_number( 0)
puts english_number( 9)
puts english_number( 10)
puts english_number( 11)
puts english_number( 17)
puts english_number( 32)
puts english_number( 88)
puts english_number( 99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(99999900999011)
puts english_number(1000000000000)
=end
=begin

bottle=1200
while bottle != 2
    puts "#{english_number(bottle).capitalize} bottles of beer on the wall, #{english_number(bottle)} bottles of beer"
    bottle -= 1
    puts "You take one down, pass it around, #{english_number(bottle)} bottles of beer on the wall"
end
puts "Two bottles of beer on the wall, two bottles of beer"
puts "You take one down, pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, One bottle of beer"
puts "You take it down, pass it around, ain't no more bottles of beer on the wall"



filename = 'ListerQuote.txt'
test_string = 'This is the string'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename
puts(read_string == test_string)



time = Time.local(1979, 12, 3, 18) + 1000000000
puts time.to_s


puts "Give me that month you were born (1-12)"
month = gets.chomp.to_i
puts "Give me that day you were born (1-31)"
day = gets.chomp.to_i
puts "Give me that year where you were born"
year = gets.chomp.to_i
now = Time.new
spanks = 1
while Time.local(year+spanks, month, day) <= now
  puts "SPANK!"
  spanks += 1
end



# I = 1 V = 5 X = 10 L = 50
# C = 100 D = 500 M = 1000


def RomanToEnglish(numerals)
  roman_hash = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
  pointer = numerals.length - 1
  total = 0
  check = 0
   
  while pointer >= 0
    current_rome = numerals[pointer].chr.upcase
    pointer -= 1
    number = roman_hash[current_rome]
    if !number
      puts "That ain't no roman numeral buddddddy"
      return
    end
    number = number * -1 if number < check
    check = number
    total += number
  end
  total
end

while true
  puts "GIVE ME ROMAN NUMBER THING OR EXIT"
  do_it = gets.chomp  
  break if do_it.upcase == "EXIT"
  puts RomanToEnglish(do_it)
end


require 'yaml'


=begin
def yaml_save object, filename
File.open filename, 'w' do |f|
f.write(object.to_yaml)
end
end
def yaml_load filename
yaml_string = File.read filename
YAML::load yaml_string
end
# ...and now we use these fancy methods.
test_array = ['Slick Shoes',
'Bully Blinders',
'Pinchers of Peril']
# Hey, time for some "me" trivia:
# In Portland once, I met the guy who
# played Troy's dad. True story.
filename = 'DatasGadgets.txt'
# We save it...
yaml_save test_array, filename
# We load it...
read_array = yaml_load filename
# We weep for the po' fools that ain't got it...
puts(read_array == test_array)
puts read_array




def birthday_magic(name)
=begin all this work and the "time" method understands 3 letter months as strings! FUUUUUCCKCKCKCCK
  months = {
    :Jan => 1,
    :Feb => 2,
    :Mar => 3,
    :Apr => 4,
    :May => 5,
    :Jun => 6,
    :Jul => 7,
    :Aug => 8,
    :Sep => 9,
    :Oct => 10,
    :Nov => 11,
    :Dec => 12
  }

  filename = "birthdays.txt"
  read_string = File.read filename 
  #read_array = read_string.split("\n") found the each_line method
  birthday_hash={}
  read_string.each_line do |i|
    items = i.split(",")
    birthday_hash[items[0]] = items[1].strip, items[2].chomp
  end
  puts "Subject's birthday is #{(birthday_hash[name]).join(",").chomp}"

  date = birthday_hash[name]
  year = (date[1].strip).to_i
  the_day = date[0].split(" ")
  month = the_day[0]
  #num_month = months[month.to_sym]
  #GRRRRRRR
  day_of_month = the_day[1]
  birthday_for_real = Time.local(year, month, day_of_month)
  current = Time.new
  age = ((current - birthday_for_real) / (60*60*24*365)).to_i
  if birthday_for_real.month >= current.month && birthday_for_real.day > current.day
    next_birthday = Time.local(current.year, month, day_of_month)
    until_birthday = ((next_birthday - current ) / (60 * 60 * 24)).to_i
    puts "#{name}'s next birthday is #{until_birthday} days away. They will be #{age + 1} years old."
  elsif 
    birthday_for_real.month == current.month && birthday_for_real.day == current.day
    puts "It's their birthday today! They are #{age} years old"
  else
    next_birthday = Time.local(current.year + 1, month, day_of_month)
    until_birthday = ((next_birthday - current ) / (60 * 60 * 24)).to_i
    puts "#{name}'s next birthday is #{until_birthday} days away on #{month} #{day_of_month}. They will be #{age + 1} years old."
  end
end

puts birthday_magic("The King of Spain")

class Array
  def randsort
    shuffled = []
    while self.length > 0
      rand_word_index = rand(self.length)
      shuffled.push self[rand_word_index]
      self.delete_at(rand_word_index)
    end
    shuffled
  end
end
words_to_sort = ["aleph", "Bet", "vet", "gimel"]
puts words_to_sort.randsort
class Integer
  def to_roman
    def tens numeral
      if numeral < 50
        if numeral%10==0
          puts "X" * (numeral/10)
        elsif ((numeral / 5).to_i) % 2 != 0
          puts "X" * ((numeral / 10).to_i) + "V" + "I" * (numeral%5)
        elsif
          numeral - (((numeral / 10).to_i) * 10) == 4
          puts "X" * ((numeral / 10).to_i) + "IV"
        elsif
          puts "X" * ((numeral / 10).to_i) + "I" * (numeral%10)
        end
      else
        print "L"
        numeral-=50
        if numeral%10==0
          print "X" * (numeral/10)
        elsif ((numeral / 5).to_i) % 2 != 0
          print "X" * ((numeral / 10).to_i) + "V" + "I" * (numeral%5)
        else
          print "X" * ((numeral / 10).to_i) + "I" * (numeral%10)
        end
      end
    end
    def hundreds num
      if num / 500 >= 1
        print "D"
        num-=500
      end
      print "C" * (num/100).to_i
    end
    def roman
      numeral = self
      if numeral>3000
        puts "too large!"
      elsif numeral == 4
        puts "IV" 
      elsif numeral < 5
        puts "I" * numeral
      elsif numeral < 10
        puts "V" + "I" * (numeral%5)
      elsif numeral<100
        tens numeral
      elsif numeral<1000
        hundreds numeral
        numeral -= ((numeral/100).to_i)  * 100
        tens numeral
        puts ""
      else 
        print "M" * (numeral/1000).to_i
        numeral -= ((numeral/1000).to_i)  * 1000
        hundreds numeral
        numeral -= ((numeral/100).to_i)  * 100
        tens numeral
        puts ""
      end
    end
    
    roman
  end
end
puts 159.to_roman

class Dice
  def initialize
    roll
  end
  def roll
    @number_showing = rand(6) + 1
  end
  
  def showing
    @number_showing
  end
  
  def cheat(i)
    while true
      if i > 1 && i < 7
        @number_showing = i
        puts "CHEAT TO WIN: #{@number_showing}"
        break
      else
        puts "INVALID PLEASE RETRY CHEATER CAN'T EVEN CHEAT RIGHT"
        i = gets.chomp.to_i
        cheat (i)
      end
      break
    end
  end
    
  
end
die = Dice.new
puts die.roll
die.cheat(7)
=end

=begin
class Dragon
  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0 # He doesn't need to go.
    puts "#{@name} is born."
  end
  
  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end
  
  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    
    passage_of_time
  end
  
  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
    @asleep = false
    puts "#{@name} wakes up slowly."
    end
    
  end
  
  def toss
    puts "You toss #{@name} up into the air."
    puts 'He giggles, which singes your eyebrows.'
    passage_of_time
  end
  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
    @asleep = false
      puts '...but wakes when you stop.'
    end
  end
  def kill
    puts "Ha, right. You die."
    exit
  end
  private
  # "private" means that the methods defined here are
  # methods internal to the object. (You can feed your
  # dragon, but you can't ask him whether he's hungry.)
  def hungry?
    # Method names can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end
  def poopy?
    @stuff_in_intestine >= 8
  end
  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name}' s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end
end

puts "Name your Dragon"
name = gets.chomp
dragon = Dragon.new name
while true
  puts "DO THINGS TO DRAGON #{@name.to_s.upcase}"
  puts "[F]EED | [T]OSS | [W]ALK | [R]OCK | PUT TO [B]ED | [K]ILL"
  choice = (gets.chomp).upcase
  case choice
    when "F" ; dragon.feed
    when "T" ; dragon.toss
    when "W" ; dragon.walk
    when "R" ; dragon.rock
    when "B" ; dragon.put_to_bed
    when "K" ; dragon.kill
    else ; puts "ERORORROEERRRORRERORRORRERRORRRO"
  end
end


require "pry"

class OrangeTree
  def initialize
    @year = 0
    @oranges = 0
    @height = 1
  end
  
  def one_year_passes
    @year += 1
    @height += 1
    case @oranges
    when 0
      puts "Another year over. The orange tree is now #{@height} feets tall."
    when 1
      puts "Another year over. The orange tree is now #{@height} feets tall. One unpicked orange falls to the ground and rots, unwanted and unmissed."
    else
      puts "Another year over. The orange tree is now #{@height} feets tall. #{@oranges} oranges fall to the ground and rot, unwanted and unmissed."
    end
    @oranges = 0
    if @year > 50
      puts "After 51 good years the orange tree dies, reminding us all of our own mortality."
      exit
    elsif @year >= 3
      @oranges += (@year / 3).to_i
    end
  end
  def count_the_oranges
    if @oranges != 1
      puts @oranges.to_s + " oranges on the tree."
    else
      puts "There's one poignant orange on the tree."
    end
  end
  
  def pick_an_orange
    if @oranges <= 0
      puts "The tree is bare like the quest for greater meaning in this old, broken world."
    else
      puts "Yum, right? Healthy too."
      @oranges -= 1
    end
  end
    
end
  
orangetree = OrangeTree.new
while true
  puts "Pick, Count, or Age?"
  choice = gets.chomp.capitalize
  case choice
  when "Pick" ; orangetree.pick_an_orange
  when "Count" ; orangetree.count_the_oranges
  when "Age" ; orangetree.one_year_passes
  else ; puts "#{choice}??? No comprendo." 
  end
  binding.pry
end




def clock &block
  time = Time.new.hour
  if time >= 13 
    time -= 12
  elsif time == 0
    time = 12
  end
  
  time.times {block.call}
end

clock {puts "bong"}
=end
$loops = 0 
def program_logger block_description, &block
  
  print "  " * $loops
  puts "Starting block #{block_description}"
  $loops += 1
  result = block.call
  $loops -= 1
  print "  " * $loops
  puts "That's the end of #{block_description}, returns #{result.to_s}.".rjust($loops-20)
  
end

program_logger "first" do
  sguigs = "sguigs".reverse
  
  program_logger "second" do
    
    program_logger "third" do
      1 + 1
    end
    1 == 3
  end
  sguigs
end
  