
def input_students
	puts "Please enter the names of the students"
	puts "To finish, hit return twice"
	# create empty array
	students = []
	# get first name
	name = gets.chomp
	# get cohort
	cohort = gets.chomp
	# while the name is not empty, repeat this code
	until name.empty? do # I found until easier to understand and read as a sentence (until name is empty => repeat this code)
		# add the student hash to the array
		students << {:name => name, :cohort => cohort} # this adds a hash for each student in the array students
		puts "Now we have #{students.length} students"
		# get another name and cohort from the user
		name = gets.chomp
		cohort = gets.chomp
	end
	# return the array of students
	students
end


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

# def filter_name(students)
# 	puts "Would you like to filter names? Type an initial if so:"
# 	filter_name = gets.chomp
# 	if filter_name == students[:name]
# 		puts "Well done."
# 	end
# end

def print(students)

	students.each.with_index(1) { |student, index| # this goes in and grabs the indivual elements, in this case each nested array
		puts index.to_s + ") #{student[:name]} is on the (#{student[:cohort]} cohort)" # from each nested array it gets the first element, index[0] and the second, index[1]
	}
end

def print_footer(students)
	puts "--------------"
	puts "Overall, we have #{students.length} great students."
end



# IMPORTANT TO REMEMBER –> separate data from operation on the data
list = input_students
#puts list
#filter_name(list)
print_header
print(list)
print_footer(list)