class Bakery 

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end


    def self.all
        @@all
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def ingredients
        desserts.map {|dessert| dessert.ingredients }
        #optional: .flatten.uniq
    end

    def total_calories 
        self.desserts.sum {|dessert| dessert.calories }
    end

     def average_calories
         total_calories / self.desserts.count
     end

     def shopping_list
        shop_list = []
        Dessert.each do |ingredient|
        shop_list << ingredient
        end
        return shop_list 
     end



end #end of bakery class