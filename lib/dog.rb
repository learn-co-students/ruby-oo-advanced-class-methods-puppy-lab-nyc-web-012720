require "pry"

class Dog

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all 
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all.each { |e| puts e.name}
    end

    def save
        @@all << self
    end

end