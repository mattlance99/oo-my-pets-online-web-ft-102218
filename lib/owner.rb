class Owner
  require 'pry'
@@all = []
attr_accessor :name, :dog, :pets, :cat, :fish
attr_reader :species 
@@owner_count = 0

  def initialize(species)
    @@owner_count  += 1
    @species = species
    @@all << self
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.all
    @@all
  end
  
  def self.count
    @@owner_count

  end
  
  def self.reset_all
    @@owner_count = 0
    @@all.clear
  end
  
  def self.species
    self.species = Owner.new
  end
  
  def play_with_cats
    @mood = "happy"
  end
  
  def say_species
     "I am a #{species}."
  end
  
  def pets 
    @pets
  end 
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end 
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end 
  
  def walk_dogs
     @pets[:dogs].each do |dog|
       dog.mood = "happy"
      end
  end
  
    def play_with_cats
     @pets[:cats].each do |cat|
       cat.mood = "happy"
      end
     end 
  
    def feed_fish
     @pets[:fishes].each do |fish|
       fish.mood = "happy"
        end
      end
      
  def sell_pets
    pets.each do |pet, pet_array|

      pet_array.each do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end

  end
  
  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end
      
end
