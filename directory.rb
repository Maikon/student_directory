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
	puts "Would you like to print certain names only? Enter the initial if you do so, otherwise press enter twice:"
	initial = gets.chomp
	puts "Which cohort would you like to see? If all press enter twice:"
	co_choice = gets.chomp
	if co_choice == names.each.with_index(1) { |student, i| student[:cohort]}
		puts "The students of my cohort at Makers Academy"
		puts @spacing.center(66, "-")
		names.each.with_index(1) do |student, i|
			if student[:name].downcase.start_with?(initial.downcase)
				details = i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
				puts details.center(66, '-')
			end
		end
	end
end


def print_footer(names)
	if names.count > 1
		puts @spacing.center(66, "-")
		puts "Overall, we have #{names.length} soon-to-be Super-Coders!"
	else
		puts @spacing.center(66, "-")
		puts "Overall, we have #{names.length} soon-to-be Super-Coder!"
	end
end


students = input_students
print(students) # puts each element of the given argument, in this case the names of the students array
print_footer(students) # prints the content in the print_footer method using the given argument, in this case the students.length