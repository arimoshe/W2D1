class Dog

    def initialize (name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end
    def name
        @name
    end

    def breed
        @breed
    end

    def age
        @age
    end

    def favorite_foods
        @favorite_foods
    end

    def age=(num)
        @age = num
    end
    
    def favorite_food?(str)
        @favorite_foods.map {|ele| ele.downcase}.include?(str.downcase)
    end

    def bark
        @age > 3 ? @bark.upcase : @bark.downcase
    end

end
