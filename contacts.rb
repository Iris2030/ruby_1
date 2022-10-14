class Contacts   
     attr_accessor :first_name, :last_name, :email, :telephone 

    def initialize(first_name,last_name, email, telephone)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @telephone = telephone
    end

end