flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino" 

#add to the array
flintstones.push("Dino").push("Hoppy")
flintstones.concat(%w(Dino Hoppy)) #do multiple instead of just one

advice = "Few things in life are as important as house training your pet dinosaur"
advice.slice!(0, advice.index('house'))
puts advice
#the ! permanently changes advice

statement = "The Flintstones Rock!"
#count the 't' character
statement.scan('t').count

title = "Flintstone Family Members"
title.center(40)