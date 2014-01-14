
@spacing = "-----------------"

@students = []
@cohort = %w[ January February March April May June July August September October November December]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

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
	#puts @students
	puts "Which cohort would you like to see? Enter a numerical value(1..12):"
	@co_choice = gets.chomp.to_i
	cohort_format
	
	show_cohort = []
	
	# while @students.include?(@co_choice)
	show_cohort << names.select { |cohort| cohort[:cohort] == @co_choice - 1 }

	puts show_cohort
		# names.each.with_index(1) do |student, index| # this goes in and grabs the indivual elements, in this case each nested array
	 # 	puts index.to_s + ") #{student[:name]} is on the (#{student[:cohort]} cohort)"
		# end
end


def print_footer(students)
	puts "--------------"
	puts "Overall, we have #{students.length} great students."
end



print_header
students = get_students 
print(students) 
print_footer(students)

# IMPORTANT TO REMEMBER –> separate data from operation on the data