@spacing = "-----------------"

@students = []
@cohort = %w[ January February March April May June July August September October November December]

def cohort_format
	while !(1..@cohort.length).include?(@input_cohort)
		puts "Please provide a month:"
		@input_cohort = gets.chomp.to_i
	end
end

def print_header
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice" # these two lines should appear at the top of the program but ONLY once
end

def get_students
	# get the first name
	puts "First name?"
	name = gets.chomp
	while name.empty?
		puts "Please provide a name?"
		name = gets.chomp
	end
	return if name.empty? 
	
	puts "Last name?"
	last = gets.chomp
	while last.empty?
		puts "Please provide last name:"
		last = gets.chomp
	end

	puts "Which cohort? Enter the month in numerical form(i.e January => 1):"
	@input_cohort = gets.chomp.to_i
	
	cohort_format
	
	@students << { name: name, last_name: last, cohort: @cohort[@input_cohort -1] }
	if @students.count > 1
		puts @students.count.to_s + " Students in total"
	else
		puts @students.count.to_s + " Student in total"
	end
	input_students
	@students
	end


def input_students
	puts "You want to add more?(y/n)"
	answer = gets.chomp
	if answer.chars.first == "y"
		get_students 
		answer = gets.chomp
	end
end



def print(names)
	# @cohort.map_with_index do |month, i|
	# 	month[i] # maybe use .map_with_index
	# end
	# puts @cohort

	puts "Which cohort would you like to see? Enter a numerical value(1..12):"
	@co_choice = gets.chomp.to_i
	cohort_format
	#months = ["jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec"]

	# if co_choice.empty?
	# 	puts "Would you like to sort the list by alphabetical order perhaps?"
	# 	sort_choice = gets.chomp

	# 	if sort_choice.eql?(nil) 
	# 		puts "Ok i'll show them all."
	# 	elsif names == nil
	# 		puts "You haven't added anything."
	# 	#elsif
	# 	#	puts names.sort {|x, y| x[:cohort] <=> y[:cohort]} # this code sorts the array by cohort and alphabetical order 
	# 	end 												   # need to fix this so a month corresponds to an integer between 1..12
	# end  													   # and also link it to the code below for it to display the list in that format
	puts "The students of my cohort at Makers Academy"
	puts @spacing.center(66, "-")

	if names == nil
		puts "You haven't provided any names I'm afraid."
	else
		names.each.with_index(1) do |student, i|

			if @students[@co_choice]
				details = i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[@cohort[@co_choice]]} cohort)"
				puts details.center(66, '-')
			# else
			# 	details = i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
			# puts details.center(66, '-')
			end

		end
	end
end


def print_footer(names)
	if names == nil
		puts "You have to provide some in order to see more info."
	else
		if names.count > 1
			puts @spacing.center(66, "-")
			puts "Overall, we have #{names.length} soon-to-be Super-Coders!"
		else
			puts @spacing.center(66, "-")
			puts "Overall, we have #{names.length} soon-to-be Super-Coder!"
		end
	end
end

print_header
students = get_students 
print(students) 
print_footer(students)