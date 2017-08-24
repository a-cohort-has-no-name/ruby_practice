#1
# puts "5 favorite foods"
# food_items = []
# 5.times do
# 	puts "Enter your favorite food item:"
# 	food_items << gets.chomp	
# end
# p food_items

# food_items.each_with_index do |food, i|
# 	i += 1
# 	puts "#{i}. #{food}"
# end

#2
# count = 0 
# 11.times do
# 	puts count
# 	count += 1
# end

# result = false
# unless (result)
# 	puts "HELLO!"
# end

# sam = {known_recipes: 11, makes_crepes: false}
# sally = {known_languages: 6, speaks_french: true}
# if sam[:known_recipes] > 10 && sally[:known_languages] > 5
# 	puts "Sam and Sally should date."
# end
# if sam[:makes_crepes] || sally[:speaks_french]
# 	puts "Sam and Sally should marry."
# end

#3
# accounts = []
# 5.times do
# 	puts "First Name"
# 	first_name = gets.chomp
# 	puts "Last Name"
# 	last_name = gets.chomp
# 	puts "Email"
# 	email = gets.chomp
# 	account_num = rand(10 ** 10) #not always 10 digits!
# 	accounts << {first_name: first_name, last_name: last_name, email: email, account_num: account_num}
# end

# accounts.each do |user|
# 	puts "First Name: #{user[:first_name]}"
# 	puts "Last Name: #{user[:last_name]}"
# 	puts "Email: #{user[:email]}"
# 	puts "Account Number: #{user[:account_num]}"
# end

#4
#ask the user for number of students
#assign number to variable
#number of students times do ask the user for a student name
#create array of students, put each student's name into array

puts "How many students are in your class?"
num_students = gets.chomp.to_i

students = []

num_students.times do
	puts "Enter student name"
	students << gets.chomp
end

# p students
(num_students/2).times do
	p students.slice!(0, 2)
end



















