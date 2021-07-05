# Add your code here
require 'pry'


class Dog

    attr_accessor :name

    @@all = []

    def save
        self.class.all << self 
    end

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def self.print_all
        self.all.each {|dog| puts dog.name}
    end

    def self.clear_all
        self.all.clear
    end


end
