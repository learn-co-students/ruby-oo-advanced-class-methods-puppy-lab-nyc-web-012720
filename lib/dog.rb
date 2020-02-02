require 'pry'

class Dog

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end

    def self.print_all
        self.all.map do |dog|
            puts dog.name
        end
    end

    def save #this is save vs self.save, because it needs to be an instance method not a class method. This instance methode will then be referenced in the class method.            
        self.class.all << self
    end
end