#Nicole Iwasaki 2/19/16 - Student Account Generator

array = []
while array.length() < 10
    name = gets.chomp("Enter student name #{(array.length)+1}")
    split_name = name.split(' ') #splits first from last name
    student_id = rand(888888) + 111111
    email_handle_numbers = student_id.to_s
    email_handle = name.chr + split_name[1].to_s + email_handle_numbers[-4,4] + "@adadevelopersacademy.org" # figure out how to get all of the email handle number with one command instead of like 4
    student = {
      name: name,
      ID: student_id,
      email: email_handle
    }
    array << student
end

puts array
  # Retrieve the data from the array of hashes
