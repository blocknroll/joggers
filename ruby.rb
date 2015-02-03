STRINGS
  greeting = "Hello Everyone!"
  greeting[0..4]    # => "Hello"
  greeting[6..-2]   # => "Everyone"
  greeting.length   # => 15

  sentence = "This is my sample sentence."  # => "This is my sample sentence."
  sentence.split                            # => ["This", "is", "my", "sample", "sentence."]
  numbers = "one,two,three,four,five"       # => "one,two,three,four,five"
  numbers.split(",")                        # => ["one", "two", "three", "four", "five"]

  greeting = "Hello Everyone!"            # => "Hello Everyone!"
  greeting.gsub("Everyone!","Friends!")   # => "Hello Friends!"


ITERATING
  5.times do |i|
    puts "#{i}: Hello, World!"
  end


ARRAYS
  meals = ["Breakfast", "Lunch", "Dinner"]  # => ["Breakfast", "Lunch", "Dinner"]
  meals << "Dessert"                        # => ["Breakfast", "Lunch", "Dinner", "Dessert"]
  meals[2]                                  # => "Dinner"
  meals.last                                # => "Dessert"
  meals.sort                                # => ["Breakfast", "Dinner", "Lunch"]
  meals.join                                # => "BreakfastLunchDinner"
  meals.index("Dinner")                     # => 2

  array = ["foo", "bar"]
  array = %w(foo bar)     # shortcut for above


  ZIP
    a = [ 4, 5, 6 ]
    b = [ 7, 8, 9 ]
    [1, 2, 3].zip(a, b)   #=> [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
    [1, 2].zip(a, b)      #=> [[1, 4, 7], [2, 5, 8]]


HASHES
  produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}  # => {"apples"=>3, "oranges"=>1, "carrots"=>12}
  produce["grapes"] = 221                                     # => 221
  produce                                                     # => {"apples"=>3, "oranges"=>1, "carrots"=>12, "grapes"=>221}
  produce.keys                                                # => ["apples", "oranges", "carrots", "grapes"]
  produce.values                                              # => [3, 1, 12, 221]

  puts "There are #{produce['oranges']} oranges in the fridge."   # => There are 1 oranges in the fridge.




###############################################################################

class Student
  attr_accessor :first_name, :last_name, :primary_phone_number

  def introduction(target)
    puts "Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

frank = Student.new
frank.first_name = "Frank"
puts "Frank's favorite number is #{frank.favorite_number}."

###############################################################################
