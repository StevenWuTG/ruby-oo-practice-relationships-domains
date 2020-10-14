class Ingredient

    attr_reader :name 
    @@all = []
    
        def initialize(name)
           
            @name = name
            @@all << self
    
        end
        
    
        def self.all
            @@all
        end
    
def dessert
    Dessert.all.select {|dessert| dessert.ingredients}
end

def bakery
    Dessert.all.select {|dessert| dessert.bakery}
end





end #end of ingredient class