# PHASE 2

def convert_to_int(str)
  Integer(str)
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

class NoCoffee < StandardError
  def message
    "Sorry, I like coffee but I want a fruit instead"
  end
end

class NotFruit < StandardError
  def message
    "I dont like this fruit give me another one"
  end
end

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  elsif maybe_fruit == "coffee"
    raise NoCoffee
  else
    raise NotFruit
  end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)

  rescue NoCoffee => e
    puts e.message
    retry
  rescue NotFruit => e
    puts e.message
    retry
  end  
end

# feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise "sorry I dont think we are that close yet" if yrs_known < 5
    raise "name cannot be empty" if name.empty?
    raise " fav_pastime cannot be empty" if fav_pastime.empty?
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

babyShark = BestFriend.new("shark", 6, "singing")
p babyShark


