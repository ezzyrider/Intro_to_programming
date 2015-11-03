ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
a = ages.key?("Spot") #checks to see if "Spot" is included in the hash
puts a 

munster_ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
 b = munster_ages.values.inject(:+) #adds all of the ages(values) together
 puts b 

ages.keep_if { |n, a| a < 100 }
puts ages 

musters_description = "The Munsters are creepy in a good way"
puts musters_description.capitalize!
puts musters_description.swapcase!
puts musters_description.downcase!
puts musters_description.upcase!

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge!(additional_ages)
puts ages

puts ages.values.min

advice = "Few things in life are as important as house training your pet dinosaur"
puts advice.include?("Dino")

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts flintstones.index { |n| n[0,2] == "Be" }

flintstones.map! do |n|
	n[0,3]
end
puts flintstones

flintstones.map! { |n| n[0,3] }

puts flintstones