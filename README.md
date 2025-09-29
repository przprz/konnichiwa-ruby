# Konnichiwa, Ruby!

Pawel Przeniczny

# Introduction

- AirHelping since 2017
- Lima team member
- github.com/przprz

# Why Ruby?

- homepage: https://www.ruby-lang.org/

- easy to read and write
    - Ruby's concise nature and readability make it an excellent first language.
- mature & industry-proven programming language
    - lots of libraries and frameworks that solve real-world problems
    - powers major companies you use every day, including Airbnb, Shopify, and Bloomberg
- foundation of AirHelp's backend systems
    - examples: Webapp, Cockpit, Payouts, Liftoff, AhPlus, etc.
- great community
    - why it matters?

# What will we cover?

- basics of programming with Ruby
    - storing information: variables and data types
    - operations on data: functions / methods
    - decisions: logic and control structures
- modeling a real world: classes, objects, methods
- running simple Ruby programs
- experimenting: interactive console
- using other people's code: libraries (a.k.a. gems)
- WHAT_ELSE

# What will we NOT cover? 
- advanced Ruby features (data validation, design patterns, metaprogramming, domain-specific languages, etc.)
- building a TODO app
- web frameworks (Rails)
- version control (git)
- testing (RSpec)
- databases 
- deployment 
- performance optimization
- security 

# Variables hold information

```ruby
# ➡️ a code comment ⬅️

# ⬇️ a reference
favourite_writer = "Olga Tokarczuk" # ⬅️a value
#                ⬆️ equal sign assigns a value to a reference

# some other comment
```

# Information comes in different *forms*, or *data types*

## Basic data types

```ruby
first_name = "Alice" # a *string*

country_code = :uk # a *symbol* (like strings, but more efficient)

height = 175 # an *integer*

body_temperature = 36.6 # a *float*

drinks_coffee = false # a *boolean*

hobbies = [:reading, :hiking] # an *array* of *symbols*

middle_name = nil # absence of value

date_of_birth = Time.new(1993, 12, 31) # a *Time* object
```

# Arrays hold ordered lists of items

```ruby 
nothing_inside = [] # empty array: square brackets

lotto_numbers = [4, 8, 15, 16, 23, 42] # bankers!

various_things = [ 
  1,       # item 0
  "hello", # item 1
  true,    # item 2
  nil,     # item 3
  3.14,    # item 4
]
```

# Using arrays

```ruby
various_things = [
        1,       # item 0
        "hello", # item 1
        true,    # item 2
        nil,     # and so on...
        3.14
]
pi_value = various_things[4] # accessing an item by its index (starts at 0)

pi_value = various_things.last # accessing the last item using a method

pi_value = various_things[-1] # accessing the last item (negative index)

pi_index = -1
pi_value = various_things[pi_index]
```

# Using arrays (continued)
```ruby
various_things.each do |item| # iterating over each item of the array
  puts item # prints each item on its own line
end
# => prints:
# 1
# hello
# true
#               # <= empty line for `nil`
# 3.14

various_things.each { |item| puts item } # the same as above, but in one line

lotto_numbers.map do |number| # transforming each item of the array
  number * 2 # returns a new array with each number doubled
end 
# => [8, 16, 30, 32, 46, 84]
 
even_numbers = lotto_numbers.select do |number| # filtering items of the array
  number.even? # returns a new array with only even numbers
end
```

# Hashes hold key-value pairs

```ruby
nothing_special = {} # empty hash: curly braces

country_capitals = {
  de: "Berlin", # key: value
  fr: "Paris",
  pl: "Warsaw",
}

alice = {
  # holds various information about a person
  name: "Alice",
  hobbies: [
    "reading",
    "hiking"
  ],
  learns_ruby: true
}
```

# Using hashes

```ruby
alice = { 
  name: "Alice",
  hobbies: ["reading", "hiking"],
  learns_ruby: true
}

alice_name = alice[:name] # accessing a value by its key
alice_hobbies = alice[:hobbies] 
alice_learns_ruby = alice[:learns_ruby] 

alice.each do |attribute_name, value| # iterating over each key-value pair
  puts attribute_name # prints each key
end

alice.map do |attribute_name, value| # transforming each key-value pair
  "#{attribute_name}: #{value}" # returns a new array with formatted strings
end
```

# Variables can be combined to form more complex data structures

```ruby
alice = { name: "Alice" }
# bob, carol, dave defined similarly
invited_guests = [alice, bob, carol, dave]

spices_to_buy = ["cinnamon", "nutmeg", "cloves"]
shopping_list = {
  apples: 4,
  bananas: 6,
  spices: spices_to_buy,
  dairy: { milk: "1L", cheese: "200g" },
}
```

# Operations on data are performed using *operators*, *functions* (or *methods*)

```ruby
easy_math = 2 - 4 * 5 / 10 # arithmetic operations

tax_to_pay = product_price * vat_rate


is_adult = age >= 18 # comparison

has_birthday = date_of_birth == today

black_is_not_white = !("black" == "white") # negation


full_name = first_name + " " + last_name # joining strings, a.k.a. concatenation

is_teenager = age.between?(13, 19) # range check

is_odd_number = number.odd? # method call

safe_to_cross_street =
  street_light == "green" && !cars_coming # multiple conditions in one expression
```
# Operations can be stored as *functions*

```ruby
# the simplest function
def do_nothing
end

do_nothing # function call; returns: nil

def greet_everyone
  # "body" of the function
  "Hello!" # returns: "Hello!"
end

greet_everyone # function call; returns: "Hello!"

def full_name(first_name, last_name)
  first_name + " " + last_name
end

def tax_amount(price, vat_rate)
  price * vat_rate
end

def is_adult?(age)
  age >= 18
end
```

# Functions can be more complex

```ruby
def complex_function
  # multiple expressions
  do_this
  then_do_that
  
  if some_condition
    return this_value # early return
  end
  
  then_this_too # last expression is the return value, unless `return` is used earlier
end
```

# Built-in functions

```ruby
various_things = [
  1, 
  "hello", 
  # ...
]
# *each* or *puts* are ones of *many* built-in functions
various_things.each do |item|
  # iterating over each item of the array
  puts item # the same as: puts(item)
end

various_things.length # returns the number of items in the array

various_things.empty? # returns true if the array has no items

various_things.include?(3.14) # returns true if the array contains 3.14

various_things.reverse # returns a new array with items in reverse order

various_things.sort # returns a new array with items sorted
```

# Decisions are made using *control structures* and *logic operators*

```ruby
def is_adult?(age) 
  # a simple `if` statement
  if age >= 18 # if condition is true
    true
  end
end

def greet_person(friend_name)
  if friend_name == "Alice"
    "Hello, Alice!"
  elsif friend_name == "Bob"
    "Hi, Bob!"
  else
    "Hey there!"
  end
end

def how_long_until_weekend?(day)
  case day
  when "Monday"
    "Eternity"
  when "Tuesday"
    "A long time"
  when "Wednesday"
    "Halfway there"
  when "Thursday"
    "Almost Friday!"
  when "Friday"
    "It's weekend soon!"
  when "Saturday", "Sunday"
    "Yay, it's weekend!"
  else
    raise "Unknown day: #{day}"  # exception: this should never happen
  end
end

# other control structures:
# - unless
# - loops: while, until, for
```

# Decisions (continued)

```ruby
def safe_to_cross_street?(street_light, cars_coming)
  if street_light != "green" # condition 1
    return false
  end
  
  if cars_coming # condition 2
    return false
  end
  
  true
end

def safe_to_cross_street?(street_light, cars_coming)
  street_light == "green" && # condition 1
    !cars_coming # condition 2
end
```

# Modeling a world using *classes* and *objects*

```ruby
# defining a class
class Dog
  # constructor (special method to create an object)
  def initialize(name, age, breed)
    @name = name # instance variable
    @age = age
    @breed = breed
  end

  # attributes
  attr_reader :name, :age, :breed
  
  # behaviour
  def bark
    "Woof!"
  end
end
```

# Modeling a world using *classes* and *objects* (continued)

```ruby
# creating objects (instances of a class)
fido = Dog.new("Fido", 3, :labrador)
snoppy = Dog.new("Snoopy", 5, :beagle)

# accessing attributes
fido.name # => "Fido"
fido.age # => 3
snoppy.breed # => :beagle
fido.name # => "Fido"

# using objects
fido.bark # => "Woof!"
snoppy.bark # => "Woof!"
```

# Modeling a world using *classes* and *objects* (continued)

```ruby
class Dog
  # specific attributes
  attr_reader :name, :age, :breed

  # information common to all instances (class constant)
  WALK_HOURS = [7, 13, 20]

  # constructor (special method to create an object)
  def initialize(name, age, breed)
    @name = name # instance variable
    @age = age
    @breed = breed
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

  private # behaviour that is not exposed to the world outside the object

  def is_hungry?
    # some complex logic to determine if the dog is hungry
    true # for simplicity, let's say the dog is always hungry
  end
end
```

# Running simple Ruby programs

1. install Ruby (from https://www.ruby-lang.org/)

2. install bundler

```shell
gem install bundler
```

3. install gems defined in Gemfile

```shell
bundle install
```

4. run a Ruby program

```shell
ruby walk_the_dog.rb
```

# Some real world classes
https://github.com/AirHelp/ah-cockpit/blob/master/app/models/claim.rb

# Using other people's code: libraries (a.k.a. gems)

# What we didn't cover? 
- advanced Ruby features, like 
  - data validation, 
  - design patterns
  - metaprogramming, domain-specific languages
- building a TODO app
- web frameworks (Rails)
- version control (git)
- testing (RSpec)
- databases
- deployment
- performance optimization
- security 
