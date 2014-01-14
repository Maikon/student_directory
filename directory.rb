@prompt = "> "
@spacing = "==============="

# good practise: methods ending in ? should always return a boolean value (true || false)
# separate data from actions on the data

def greeting
	puts "Hello there!"
	puts "Please add the students to the list:"
end

def submit_students
	greeting

	puts "Name of student?"
	@prompt; name = gets.chomp.capitalize!
	
	while name.nil?
		puts "Name of student?"
		@prompt; name = gets.chomp.capitalize!
	end

	puts "And which cohort?"
	@prompt; cohort = gets.chomp.capitalize!

	while cohort.nil?
		puts "And which cohort?"
		@prompt; cohort = gets.chomp.capitalize!
	end

	array_of_students = []

	array_of_students << { name: name, cohort: cohort }

	array_of_students
end

def asking_details

end

def store_details?
	
end

def saving_details
	
end

def add_more_details?
	
end

def sort_by_criteria
	
end



submit_students