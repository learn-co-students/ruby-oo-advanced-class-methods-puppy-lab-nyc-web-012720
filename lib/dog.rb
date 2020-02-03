require 'pry'

class Dog 
# 1. class var 
# has a class variable, @@all, the points to an array
 @@all = []

# 2. attr_accessor
 attr_accessor :name

#  adds this dog instance to the @@all array when called
#  gets called inside initialize when a new Dog is created
 def save
    self.class.all << self
  end 
#   initializes with one argument - a name
 def initialize (name)
    @name = name
    save
 end 

#  is a class method returns all dog instances
 def self.all
    @@all
    # binding.pry
 end 

#  is a class method that empties the @@all array of all existing dogs
 def self.clear_all
    @@all.clear
 end 

#  is a class method that puts out the name of each dog to the terminal
 def self.print_all
    self.all.each {|element| puts element.name}
    

 end 

 
end