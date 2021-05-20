def input_students
	# create an empty array
	students = []
	
	while true do
      puts "Please enter the names of the students"
      name = gets.strip
      name = name.to_sym
      puts "To finish, just hit return three times"
        if name.empty?
          break
        end
      puts "And the cohort?"
      cohort = gets.strip

      puts "Is this cohort correct? Y/N"
      input = gets.strip
        if input == "N"
          next
        end
      cohort = cohort.to_sym
	  # add the student hash to the array
        if cohort.empty?
          students << {name: name, cohort: :november}
        else
          students << {name: name, cohort: cohort}
        end
      if students.count == 1
	    puts "Now we have 1 student"
      else
        puts "Now we have #{students.count} students"
      end
	  # get another name from the user
	  #name = gets.chomp
      end
	# return the array of students
	students
end	

def print_header
	puts "The students of Villains Academy".center(100)
	puts "-------------".center(100)
end

def print(students)
  list_by_cohort = {}
  students.each do |student|
    cohort = student[:cohort]
    name = student[:name]

    if list_by_cohort[cohort] == nil
     list_by_cohort[cohort] = [name]
    else
     list_by_cohort[cohort].push(name)
    end
  end
  if list_by_cohort.length > 0
		list_by_cohort.each do |cohort, name|
			puts "#{cohort}".center(100)
			puts name
		end
	end
end

def print_footer(students)
    if students.count == 1
      puts "Overall, we have 1 great student".center(100)
    else
      puts "Overall, we have #{students.count} great students".center(100)
    end
end	

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)