require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
    #binding.pry
  end

  def buy_fish(name)
    blinkie = Fish.new(name)
    @pets[:fishes] << blinkie
  end

  def buy_dog(name)
    santas_little_helper = Dog.new(name)
    @pets[:dogs] << santas_little_helper
  end

  def buy_cat(name)
    snowball = Cat.new(name)
    @pets[:cats] << snowball
  end

  def say_species
    "I am a #{species}."
  end

  def play_with_cats
    @pets[:cats].each {|cats| cats.mood = "happy"}
  end

  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
      @pets.each do |type, pets|
        pets.each do |pet|
          pet.mood = "nervous"
        end
        @pets[type] = []
      end
      #binding.pry
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

end
