@spacing = "-----------------"

def get_students(students)
	# get the first name
	puts "First name?"
	name = gets.chomp
	return if name.empty? # goes out if name is empty
	
	puts "Last name?"
	last = gets.chomp
	while last.empty?
		puts "Please provide last name:"
		last = gets.chomp
	end

	puts "Which cohort?"
	cohort = gets.chomp.to_sym
	cohort = "january" if cohort.empty?
	
	# adds 
	students << { name: name, last_name: last, cohort: cohort }
	if students.count > 1
		puts students.count.to_s + " Students in total"
	else
		puts students.count.to_s + " Student in total"
	end
	students
	end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	entered_students = []
	students = get_students(entered_students)
	puts "You want to add more?(y/n)"
	answer = gets.chomp
	until answer.chars.first != "y"
		get_students(students) 
		puts "You want to add more?(y/n)"
		answer = gets.chomp
	end
	students
end



def print(names)
	puts "Which cohort would you like to see? If all press enter twice:"
	co_choice = gets.chomp.to_sym
	puts "The students of my cohort at Makers Academy"
	puts @spacing.center(66, "-")

	if names == nil
		puts "You haven't provided any names I'm afraid."
	else
		names.each.with_index(1) do |student, i|

			if student[:cohort] == co_choice
				details = i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
				puts details.center(66, '-')
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


students = input_students # assigns the value of the input_students method, to the variable students
print(students) # calling print method, passing students as an argument.
print_footer(students) # calling print_footer method, again passing students as an argument.