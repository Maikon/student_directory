# let's put all students into an Array
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

# and then print them
puts "The students of my cohort at Avengers Academy"
puts "-----------------"

students.each do |name|
	puts name
end

# finally, we print the total count.
puts "Overall, we have #{students.length} soon-to-be Avenegers."

# puts is a method provided by Ruby that takes in this case, a string as an argument.
# it prints a line of text to the standard output, in this case the terminal.