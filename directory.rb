# put all students into an Array
students = [
	"Captain America",
	"Thor",
	"Iron Man",
	"Hulk",
	"Black Widow",
	"Ant-Man",
	"Black Widow",
	"Black Panther",
	"Hawkeye"
]

def print_header
	puts "The students of my cohort at Avengers Academy"
	puts "-----------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} soon-to-be Avengers!"
end



print_header # puts the contents of the print_header method
print(students) # puts each element of the given argument, in this case the names of the students array
print_footer(students) # prints the content in the print_footer method using the given argument, in this case the students.length
