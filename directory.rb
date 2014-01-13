# Array that holds students
students = [
	"Captain America",
	"Thor Thunder",
	"Hulk Smash",
	"Black Panther",
	"Iron Man"
]


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "--------------"
	puts "Overall, we have #{names.length} great students."
end



# IMPORTANT TO REMEMBER –> separate data from operation on the data

print_header
print(students)
print_footer(students)