class Phonebook
attr_reader :contacts

def initialize
    @contacts = [{
        "first_name" => "Iryna",
        "last_name"=> "Bazhynova",
        "email" => "trumpumpum",
        "telephone" => "83380-3883-3883"
    }]
end

def add_contact(contact)
    @contacts.push(contact)
    puts "The contact was successfully created!"

    File.open("phonebook.txt", "w") do |file|
        file.write("\n#{$phonebook.contacts.join("\n")}")
        end
    
end

def delete_email(email)
    @contacts.each do |i|
        if i["email"]!= email
                puts "These is no contact with email #{email} " 
        end
        if i["email"] == email
            index = @contacts.index(i) 
            @contacts.delete_at(index)
            puts "The contact was successfully deleted!"

            File.open("phonebook.txt", "w") do |file|
                file.write("\n#{$phonebook.contacts}")
                end
        end
    end  
end


def update_email(email)
@contacts.each do |i|
if i["email"]!= email
        puts "These is no contact with email #{email} " 
end
if i["email"]== email
    puts "Enter name :"
    name = gets.chomp()
    puts "Enter surname :"
    surname = gets.chomp()
    puts "Enter email :"
    email = gets.chomp()
    puts "Enter telephone :"
    phone = gets.chomp()
    i["first_name"] = name
    i["last_name"] = surname
    i["email"] = email
    i["telephone"] = phone

    puts "The contact was successfully updated!"

end
end
end
        
    end