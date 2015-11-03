#1----------------------

munsters = {
	"Herman" => { "age" => 32, "gender" => "male" },
	"Lily" => { "age" => 30, "gender" => "female" },
	"Grandpa" => { "age" => 402, "gender" => "male" },
	"Eddie" => { "age" => 10, "gender" => "male" }, 
	"Marilyn" => { "age" => 23, "gender" => "female" }
}

total_male_age = 0
munsters.each do |name, details|
	total_male_age += details["age"] if details["gender"] == "male"
end

#2------------------------

munsters.each_pair do |name, details|
	puts "#{name} is a #{details['age']} year old #{details['gender']}"
end

#3-------------------------
def tricky_method(a_string_param, an_array_param)
	a_string_param += "rutabaga"
	an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#----------refactored-----------------
def not_so_tricky_method(a_string_param, an_array_param)
	a_string_param += "rutabaga"
	an_array_param += ["rutabaga"]

	return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"


#4------------------------------------------
sentence = "Humpty Dumpty sat on a wall"
words = sentence.split(/\W/)
words.reverse!
backwards_sentence = words.join(' ')
puts backwards_sentence

#5------------------------------------------
answer = 42

def mess_with_it(some_number)
	some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#new_answer = 50,  answer = 34

#6------------------------------------------
def mess_with_demographics(demo_hash)
	demo_hash.values.each do |family_member|
		family_member["age"] += 42
		family_member["gender"] = "other"
	end
end
mess_with_demographics(munsters)
#this does change the data in the munsters array

#7-------------------------------------------
def rps(fist1, fist2)
	if fist1 = "rock"
		(fist2 == "paper") ? "paper" : "rock"
	elsif fist1 == "paper"
		(fist2 == "scissors") ? "scissors" : "paper"
	else
		(fist2 == "rock") ? "rock" : "scissors"
	end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# rock

#8--------------------------------------------
def foo(param = "no")
	"yes"	
end

def bar(param = "no")
	param == "no" ? "yes" : "no"
end

# "no"
