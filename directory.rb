


def get_students(students)
	# get the first name
	puts "First name?"
	name = gets.chomp
	return if name.empty? # goes out if name is empty
	puts "Last name?"
	last = gets.chomp
	
	# adds 
	students << { name: name, last_name: last, cohort: :january}
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

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-----------------"
end



def print(names)
	puts "Would you like to print certain names only? Enter the initial if you do so:"
	initial = gets.chomp
	names.each.with_index(1) do |student, i|
		if student[:name].downcase.start_with?(initial.downcase)
			puts i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
		end
	end
end

# def print(names)
# 	puts "Would you like to print certain names only? Enter the initial if you do so:"
# 	initial = gets.chomp
# 	names.each.with_index(1) do |student, i|

# 		puts i.to_s + ") #{student[:name]} #{student[:last_name]} (#{student[:cohort]} cohort)"
# 	end
# end




def print_footer(names)
	if names.count > 1
		puts "Overall, we have #{names.length} soon-to-be Super-Coders!"
	else
		puts "Overall, we have #{names.length} soon-to-be Super-Coder!"
	end
end


students = input_students
print(students) # puts each element of the given argument, in this case the names of the students array
print_header # puts the contents of the print_header method
print_footer(students) # prints the content in the print_footer method using the given argument, in this case the students.length