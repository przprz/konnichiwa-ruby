require 'pry'

class Dog
  # specific attributes
  attr_reader :name, :age, :breed, :snacks_eaten

  # information common to all instances (class constant)
  WALK_HOURS = [7, 13, 20]
  YOUNG_DOG_AGE = 2 # dogs under 2 years are considered young

  # constructor (special method to create an object)
  def initialize(name, age, breed)
    @name = name # instance variable
    @age = age
    @breed = breed
    @snacks_eaten = 0
  end

  # behaviour:  methods

  # public methods
  def bark
    "Woof!"
  end

  def needs_walk?
    current_hour = Time.now.hour

    WALK_HOURS.include?(current_hour)
  end

  def is_happy?
    if is_hungry? # uses a private method
      return false
    end

    true
  end

  def feed(snacks)
    if is_hungry?
      @snacks_eaten += snacks
      "#{@name} ate #{snacks} snack(s)! Nom nom nom!"
    else
      "#{@name} is not hungry right now."
    end
  end

  private # behaviour that is not exposed to the world outside the object

  def is_hungry?
    # young dogs get hungry more often
    # generate a random number and compare against age threshold
    hunger_threshold = @age < YOUNG_DOG_AGE ? 0.7 : 0.4
    rand < hunger_threshold
  end
end

fido = Dog.new("Fido", 3, :labrador)
snoopy = Dog.new("Snoopy", 5, :beagle)
puppy = Dog.new("Puppy", 1, :golden_retriever)

dogs = [fido, snoopy, puppy]

dogs.each do |dog|
  # binding.pry # uncomment this line to debug with pry
  puts "#{dog.name} (age #{dog.age}) says #{dog.bark}"

  if dog.needs_walk?
    puts "#{dog.name} needs a walk!"
  else
    puts "#{dog.name} does not need a walk right now."
  end

  puts "#{dog.name} is happy: #{dog.is_happy?}"
  puts "-----"
end
