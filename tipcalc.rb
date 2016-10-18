
# Initialize variables
bill = 0
tip_percent = 0.0
num_people = 0
round_choice = nil

# Prompt user for bill amount
puts "What was your total bill amount?"
bill = gets.chomp

# Validate user input for variable 'bill'
while bill.to_i <= 0 
	puts "Apparently you had too much to drink. Please input a positive number!"
	bill = gets.chomp
end

# Offer round-up-for-charity option
round_for_charity = bill.to_f.ceil - bill.to_f
puts "Would you like to round up for charity by adding $#{round_for_charity.round(2)}?"
puts "Type 'Y' for Yes or 'N' for No:"
round_choice = gets.chomp


valid_answers = ['Y', 'y', 'N', 'n']
until valid_answers.include?(round_choice)
  puts "Invalid entry. Try again:"
  round_choice = gets.chomp
end

case round_choice.upcase
  when "Y"
	bill = bill.to_f + round_for_charity.to_f
	puts "Thank you! Your bill is now $#{bill}."
  when "N"
	bill = bill
	puts "Scrooge!"
end
    #  else
	# puts "Invalid entry. Try again:"
	# puts "Would you like to round up for charity by adding $#{round_for_charity.round(2)}?"
	# puts "Type 'Y' for Yes or 'N' for No:"
	# round_choice = gets.chompend

# Prompt user for tip percentage
puts "What percentage do you want to tip? (i.e., 15, 18, 20, or 25)"
tip_percent = gets.chomp

# Validate user input for variable 'tip_percent'
while tip_percent.to_f <= 0 
	puts "Seriously, call a cab! Please input a positive number!"
	tip_percent = gets.chomp
end

# convert 'tip_percent' to rational number
tip_percent = tip_percent.to_r

# check to see if 'tip percentage' variable needs to be converted to decimal
tip_percent /= 100 if tip_percent.to_f >= 1

# Prompt user for number of people to split bill
puts "How many people are splitting the bill?"
num_people = gets.chomp

# Validate user input for variable 'num_people'
while num_people.to_i <= 0
	puts "You're cut off! Please input a positive whole number!"
	num_people = gets.chomp
end

puts "Nice try smartass. We rounded your number of people down to #{num_people.to_i}" if num_people.to_i != num_people.to_f

# calculate tip, total bill, and share per person
tip = bill.to_r * tip_percent.to_r
total_w_tip = bill.to_r + tip
my_share = total_w_tip / num_people.to_r

# Final output...
puts "This is your total bill amount: $#{bill.to_f.round(2)}"
puts "This is your tip percent: #{tip_percent.to_f.round(2)}"
puts "This is how many people are splitting the bill: #{num_people.to_i}"
puts "This is your total bill amount WITH TIP: $#{total_w_tip.to_f.round(2)}"
puts "This is your share of the bill: $#{my_share.to_f.round(2)}"



