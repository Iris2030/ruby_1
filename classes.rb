module Cleaning
        
    def being_cleaned(place)
    puts  "#{place} is being cleaned"
    end
    
end
# /////////**********************************************************************************************//////

module Rest
     
    def taking_a_nap(person)
    puts "#{person} is taking a nap"
    end
 
end
# /////////**********************************************************************************************//////

module Vacation
        
    def on_vacation(name)
    puts "#{name} is on vacation"
    end

end

# ///////////////////////////////////////////////////////////////////////////////////////////////////////////
# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
# ///////////////////////////////////////////////////////////////////////////////////////////////////////////

class Airport_staff
    include Rest
    prepend Vacation
    attr_accessor :department, :working_hours, :salary
    def work(name)
        puts "#{name} works"
    end

    def summary(worker, profession)
        puts "#{worker.name} is a #{worker.gender} #{worker.age} years old #{profession} with a #{worker.experience} years of experience in industry"
    end
    
end
    # /////////**********************************************************************************************//////

class Airport_facilities
    prepend Cleaning
    attr_accessor :airline
    @airport_stuff = Airport_staff.new
    
    def functioning
        puts "functioning"
    end
end
# /////////**********************************************************************************************//////


class Transport
    include Cleaning
    attr_accessor :type, :speed, :condition

    def operates
        "operates"
    end
end
# /////////**********************************************************************************************//////

class Pilot < Airport_staff
    attr_accessor :name, :experience, :age, :gender

    def initialize(option ={})
        @experience = option[:experience]
        @age = option[:age]
        @gender = option[:gender]
        @name = option[:name]
    end

        def action(name)
            puts  "#{name} controls_a_plane"
        end
    
    end
# /////////**********************************************************************************************//////

    class Airplane < Transport
        attr_accessor :type

        @pilot = Pilot.new
    
        def flies   
        puts "flies"
        end
    
    end
# /////////**********************************************************************************************//////

    class Bus < Transport
    attr_accessor :speed, :brand
    
        def rides
        end
       
    end
# /////////**********************************************************************************************//////

    class Cleaner < Airport_staff
        attr_accessor :name, :experience, :age, :gender
    
        def clean 
        end
    
    end
# /////////**********************************************************************************************//////

    class Seller < Airport_staff
        attr_accessor :name, :experience, :age, :gender
    
        def sell 
            puts "sells"
        end
    
    end
# /////////**********************************************************************************************//////

    class Driver < Airport_staff
        attr_accessor :name, :experience, :age, :gender
    
        def drive
            puts  "drives" 
        end
    
    end
# /////////**********************************************************************************************//////

    class Duty_free_shop < Airport_facilities
        include Cleaning
        attr_accessor :goods
    
        def initialize
            @goods = []   
        end
    
        def add_item(item)
            @goods.push(item)  
            puts "duty free has #{@goods}"
        end

    end
# /////////**********************************************************************************************//////

    class Item
        attr_accessor  :name, :price, :weight, :type
    
        def initialize(type,name, price, weight)
            @type = type
            @name = name
            @price = price
            @weight = weight

        
        end

    end
    

    # ///////////////////////////////////////////////////////////////////////////////////////////////////////////
    # \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
    # ///////////////////////////////////////////////////////////////////////////////////////////////////////////


    driver1 = Driver.new
     driver1.name = "George"
     puts driver1.work(driver1.name)

     pilot1 = Pilot.new
     pilot1.name = "Platon"
     pilot1.age = 35
     pilot1.gender = "male"
     pilot1.experience = 10

     airplane1 = Airplane.new
     airplane1.type = "Boeing 737"
     puts airplane1.type + " " + airplane1.operates
     
     airport_stuff = Airport_staff.new
     puts airport_stuff.summary(pilot1,"pilot")

     seller1 = Seller.new
     seller1.name = "Anna"
     puts seller1.on_vacation(seller1.name)

     cleaner1 = Cleaner.new
     cleaner1.name = "Elsa"
     puts cleaner1.taking_a_nap(cleaner1.name)


     duty_free = Duty_free_shop.new
     duty_free.add_item(Item.new("perfume", "Dior", 300, 100))
     duty_free.add_item(Item.new("chocolate", "Milka", 30, 20))

     pilot2 = Pilot.new
     pilot2.name = "Nick"
     pilot2.action(pilot2.name)