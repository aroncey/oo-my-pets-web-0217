require 'pry'
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@count = 0
  @@all = []

  def initialize(pet_owner)
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@count += 1
    @@all << self
    @species = pet_owner
  end

  def buy_fish(fish_name)
    fish_name = Fish.new(fish_name)
    @pets[:fishes] << fish_name
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    @pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    @pets[:dogs] << dog_name
  end

  def walk_dogs
    # binding.pry
    @pets[:dogs].map do |element|
      element.mood = "happy"
    end
  end

  def play_with_cats
    # binding.pry
    @pets[:cats].map do |element|
      element.mood = "happy"
    end
  end

  def feed_fish
    # binding.pry
    @pets[:fishes].map do |element|
      element.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |k, v|
      v.map do |element|
        element.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    # binding.pry
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def say_species
    "I am a #{@species}."
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end

  def self.all
    @@all
    #binding.pry
  end
end
