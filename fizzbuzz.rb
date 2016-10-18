i = 1
100.times do
	if (i % 3 == 0) and !(i % 5 == 0)
		puts "Fizz"
	elsif (i % 5 == 0) and !(i % 3 == 0)
		puts "Buzz"
	elsif (i % 3 == 0) and (i % 5 == 0)
		puts "FizzBuzz"
	else
		puts i
	end
	i+=1
end
