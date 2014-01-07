# put all students into an Array
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



print_header # puts the contents of the print_header method
print(students) # puts each element of the given argument, in this case the names of the students array
print_footer(students) # prints the content in the print_footer method using the given argument, in this case the students.length
