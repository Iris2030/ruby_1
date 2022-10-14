require_relative "contacts"
require_relative "phonebook"


$phonebook = Phonebook.new


def menu
puts "\nFor creating a contact press 1"
puts "To see your contacts press 2"
puts "To update a contact press 3"
puts "To delete a contact press 4"
puts "To leave press 5"

return gets.to_i

end


def check_option 
 
    case  menu()
    when 1
        puts "Please enter first name :"
        first_name = gets.chomp()
        puts "Please enter last name :"
        last_name = gets.chomp()
        puts "Please enter email :"
        email = gets.chomp()
        puts "Please enter telephone number :"
        telephone = gets.chomp()
        

        contact = {
            "first_name" => first_name,
            "last_name" => last_name,
           "email" => email,
            "telephone" => telephone
        }


$phonebook.add_contact(contact)

check_option()

when 2
    p $phonebook
    check_option()

when 3
    puts "Please enter contact email :"
    email = gets.chomp()
    $phonebook.update_email(email)

    check_option()

when 4

    puts "Please enter contact email :"
    email = gets.chomp()
    $phonebook.delete_email(email)

    check_option()

when 5
puts "Good bye"

else
    puts "Error! Such command doesn't exist!"

end

end


check_option()

