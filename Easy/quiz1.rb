numbers = [1,2,2,3]
numbers.uniq  #this returns the unique numbers, but does NOT print them out

puts numbers #returns the full list from above, 1,2,2,3


# => != not equals
# => ? : ternary operator for if...else
# => !!<some object> turns the object into the boolean
# => !<some object> turns the object into the opposite of their boolean equivalent

advice = "few things in life are as important as house training your pet dinosaur"
#replace the word "important" with "urgent"
advice.gsub!('important', 'urgent')

nums = [1,2,3,4,5]
nums.delete_at(1)  #deletes the 2, it is in the [1] spot
nums.delete(1) #deletes the number 1
# note that both the 1 and the 2 are permanently removed

(10..100).cover?(42)  #is 42 between 10 and 100?

famous_words = "seven years ago..."

puts "four score " + famous_words
puts "four score #{famous_words}"
puts famous_words.prepend("Four score and ")
puts "Four score and " << famous_words

def add_eight(number)
	number + 8
end

number = 2

how_deep = "number"
5.times {how_deep.gsub!("number", "add_eight(number)") }

p how_deep

p eval(how_deep) #returns 42

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
#returns ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
flintstones.flatten!
#this makes it an un-nested array

flintstones_hash = {}
flintstones.each_with_index do |n, i|
	flintstones_hash[n] = i
end

puts flintstones_hash

