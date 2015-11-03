statement = "The Flintstones Rock"

10.times { |num| puts (" " * num) + statement + "!" }

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
	letter_frequency = statement.scan(letter).count
	result[letter] = letter_frequency if letter_frequency > 0
end
puts result

puts "the value of 40 + 2 is " + (40+2).to_s

#iterate over an array
numbers = [1,2,3,4]
numbers.each do |number, index|
	p "#{index} #{numbers.inspect} #{number}"
	numbers.shift(1)
end

numbers.each do |number|
	p number
	numbers.pop(1)
end

def factors(number)
	dividend = number
	divisors = []
	while dividend > 0 do
		divisors << number / dividend if number % dividend == 0
		dividend -=1
	end
end

#this modifies buffer
def rolling_buffer1(buffer, max_buffer_size, new_element)
	buffer << new_element
	buffer.shift if buffer.size >= max_buffer_size
	buffer
end

#this will not
def rolling_buffer2(input_array, max_buffer_size, new_element)
	buffer = input_array + [new_element]
	buffer.shift if buffer.size >= max_buffer_size
	buffer
end

#7--------------------------
@limit = 15

def fib(first_num, second_num)
	
	while second_num < @limit
		sum = first_num + second_num
		first_num = second_num
		second_num = sum
	end
	sum
end

result = fib(0,1)
puts "result is #{result}"


#8-------------------------------
words = "hello how are you"
words.split.map { |word| word.downcase.capitalize }.join(' ')

#9-------------------------------
munsters = {
	"Herman" => { "age" => 32, "gender" => "male" },
	"Lily" => { "age" => 30, "gender" => "female" },
	"Grandpa" => { "age" => 402, "gender" => "male" },
	"Eddie" => { "age" => 10, "gender" => "male" },
	"Marilyn" => { "age" => 23, "gender" => "female" }
}
munsters.each do |name, details|
	case details["age"]
	when 0..18
		details["age_group"] = "kid"
	when 18..65
		details["age_group"] = "adult"
	else
		details["age_group"] = "senior"
	end
end
