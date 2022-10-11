
class Car 
    attr_accessor :speed,:color, :model

    def initialize (speed, color, model)
        @speed = speed
        @color = color
        @model = model
    end
end

BMW = Car.new(200, 'green', 'S6')


p BMW.speed
p BMW.model