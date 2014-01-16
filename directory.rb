require 'date'

@prompt = "> "
@spacing = "==============="
@array_of_students = []

def print_header
	puts "Hello there!"
	puts @spacing	
	puts "We have the following options for you:"
	puts @spacing
end


def interactive_menu
	puts @spacing
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
		puts "Adios amigo!"
		exit
	end

end


def input_students
	puts "Please input students:"

	puts "Name of student?"
	@prompt; name = gets.chomp
	
	while name.nil?
		puts "Name of student?"
		@prompt; name = gets.chomp
	end

	puts "And which cohort? Provide numerical form (i.e 1 = Jan)"
	@prompt; cohort = gets.chomp.to_i

	while cohort.zero?
		puts "Please provide numerical form (i.e 1 = Jan)"
		@prompt; cohort = gets.chomp.to_i
	end

	current_details = { name: name, cohort: Date::ABBR_MONTHNAMES[cohort] }
	
	@array_of_students << current_details if store_details?(current_details) == true
		

	input_students if add_more_details? == true

	@array_of_students

	see_menu
end


def yes_or_no?
	print @prompt; answer = gets.chomp.capitalize!
	while  answer.nil? || !answer.match(/[YN]/)
		puts "Please provide an answer (Yes/No):"
		print @prompt; answer = gets.chomp.capitalize!
	end
	answer.start_with?("No", "N") ? false : true
end


def store_details?(details)
	puts "Are the following details correct? (Yes/No)"
	puts @spacing
	puts "Name: #{details[:name]}, Cohort: #{details[:cohort]}?"
	puts @spacing
	yes_or_no?
end


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
		puts "Would you like to add some?"
		if yes_or_no? == true
			input_students 
		else
			see_menu
		end

	else
		puts @spacing
		puts "These are the following students: "
		list.each.with_index(1) do |student, i| 
			puts i.to_s + ") #{student[:name]}, (#{student[:cohort]} cohort)"
		end
		puts @spacing
		see_menu
	end
end


def print_footer(list)
	puts @spacing
	puts "Overall, we have #{list.length} students joining in."
end


def see_menu
	puts "Would you like to see the menu again?"
	if yes_or_no? == true
		interactive_menu
	else
		puts "Adios Amigo!"
	end
	exit
end


print_header
interactive_menu
