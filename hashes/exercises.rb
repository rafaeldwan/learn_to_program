require 'pry'

#exercise 1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immmediate_family = family.select { |relation, name| relation == :sisters || relation == :brothers }
puts immmediate_family.flatten

#exercise 2

hash1 = {a: 100, b: 200, c: 300}
hash2 = {b: 100, c: 200, d: 300}
hash3 = hash1.merge(hash2)
puts hash3
hash3.merge!(hash2) {|key, value, other_value| value - (other_value * 2)}
puts hash3

#exercise 3

hash3.each_key {|x| puts x}
hash3.each_value {|x| puts x}
hash3.each {|i, x| puts "#{i}: #{x}"}

#exercise 4

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

#exercise 5
person.each do |value| 
   return true if value == "value"
end

#book uses .has_value? method

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
=begin 
#how I did, almost worked

words.each do |word|
   letters = word.split(//)
   anagram = []
   words.each do |other_word|
      letter_match = 0
      other_letters = other_word.split(//)
      other_letters.each do |other_letter|
         letters.each do |letter|
            if other_letter == letter
               letter_match += 1
               if letter_match == 4
                  anagram.push other_word 
                  words.delete other_word
               end
               
            end
            if letter_match == 4
                  words.delete word
            end
         end
      end
      
      
   end
   puts anagram
   puts
end
=end

#recreating book method, which is way better

result = {}

words.each do |word|
   key = word.split('').sort.join
   if result.has_key?(key)
      result[key].push(word)
   else
      result[key] = [word]
   end
end
result.each do |k, v|
   puts "-----"
   p v
end