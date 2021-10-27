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
  else
    begin
      maybe_fruit
    rescue NotFruit => e
      raise e.message unless FRUITS.include?(maybe_fruit)
      puts "I don't like this fruit, give me coffee and I'll let you try again"
      coffee = gets.chomp
      retry
    end
  # elsif maybe_fruit == "coffee"
  #   raise NoCoffee
  # else
  #   raise NotFruit
  end


  # rescue NoFruit => e
  #   puts e.message
  #   retry
  # end
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit)
end

feed_me_a_fruit

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
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


