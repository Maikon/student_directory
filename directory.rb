require 'date'

@prompt = "> "
@spacing = "==============="
@array_of_students = []

# good practise: methods ending in ? should always return a boolean value (true || false)
# separate data from actions on the data

def interactive_menu
	puts "Hello there!"
	puts @spacing	
	puts "We have the following options for you:"
	# use a block with yield to start from here again instead from all the way at the top
	puts "1. Input the students."
	puts "2. Show the students."
	puts "9. Exit."
	puts @spacing
	puts "Please choose one:"

	print @prompt; answer = gets.chomp

	case answer
	when "1"
		input_students
	when "2"
		show_students(@array_of_students)
	when "9"
		exit
	end

end

def input_students
	puts "Please input students:"

	puts "Name of student?"
	@prompt; name = gets.chomp.capitalize!
	
	while name.nil?
		puts "Name of student?"
		@prompt; name = gets.chomp.capitalize!
	end

	puts "And which cohort? Provide numerical form (i.e 1 = Jan)"
	@prompt; cohort = gets.chomp.to_i

	while cohort.zero?
		puts "Please provide numerical form (i.e 1 = Jan)"
		@prompt; cohort = gets.chomp.to_i
	end

	# array_of_students = []

	current_details = { name: name, cohort: Date::ABBR_MONTHNAMES[cohort] }
	
	@array_of_students << current_details if store_details?(current_details) == true
		

	input_students if add_more_details? == true

	@array_of_students

	interactive_menu
end

def yes_or_no?
	print @prompt; answer = gets.chomp.capitalize!
	while !answer.match(/[YN]/)
		puts "Please provide an answer (Yes/No):"
		print @prompt; answer = gets.chomp.capitalize!
	end
	answer.start_with?("No", "N") ? false : true
end

def store_details?(details)
	puts "Are the following details correct? (Yes/No)"
	puts "Name: #{details[:name]}, Cohort: #{details[:cohort]}?"
	yes_or_no?
end

# def print(students)
# 	puts "These are the following students: "
# 	# students.each.with_index(1) do |student, i|
# 	# 	puts i.to_s + ") #{student[:name]}, (#{student[:cohort]} cohort)"
# 	# end
# end

def add_more_details?
	puts "Would you like to add more details? (Yes/No)"
	yes_or_no?
end

def sort_by_cohort
	
end

def sort_by_name
	
end

def show_students(list)
	if list.empty?
		puts "You haven't added anything I'm afraid..."
	else
		puts "These are the following students: "
		list.each.with_index(1) do |student, i| 
			puts i.to_s + ") #{student[:name]}, (#{student[:cohort]} cohort)"
		end
	end
	interactive_menu
end

def print_footer(list)
	puts @spacing
	puts "Overall, we have #{list.length} students joining in."
end



interactive_menu
# students = input_students
# show_students(students)






























