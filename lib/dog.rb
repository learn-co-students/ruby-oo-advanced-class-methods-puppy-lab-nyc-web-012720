class Dog
attr_accessor :name 

@@all = []


    def initialize(name)
        @name = name 
        self.save 
    
    end 

    def self.all
       return @@all
    end 

    def self.print_all
        @@all.each {|selected_dog| puts selected_dog.name}
        #  return @@all.name 
    end 

    def save
        @@all << self 

    end 

    def self.clear_all
        @@all.clear 

    end 

    def name
        @name
    end 
   






end 