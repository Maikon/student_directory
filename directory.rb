# put all students into an Array
=begin
students = [
	{:name => "Captain America", :cohort => :january},
	{:name => "Thor", :cohort => :january},
	{:name => "Iron Man", :cohort => :january},
	{:name => "Hulk", :cohort => :january},
	{:name => "Black Widow", :cohort => :january},
	{:name => "Ant-Man", :cohort => :january},
	{:name => "Black Widow", :cohort => :january},
	{:name => "Black Panther", :cohort => :january},
	{:name => "Hawkeye", :cohort => :january}
]
=end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :january}
		puts "Now we have #{students.length} students."
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

def print_header
	puts "The students of my cohort at Avengers Academy"
	puts "-----------------"
end

def print(names)
	names.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} soon-to-be Avengers!"
end


students = input_students
print_header # puts the contents of the print_header method
print(students) # puts each element of the given argument, in this case the names of the students array
print_footer(students) # prints the content in the print_footer method using the given argument, in this case the students.length
