# PHASE 2
def convert_to_int(str)
  Integer(str)
  # raise 
  #  "Wrong Type of arguement"
rescue StandardError

end
class CoffeeError < StandardError; end
# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise CoffeeError 
  end
rescue CoffeeError
  puts "Not a fruit you must feed coffee first" 
  input = gets.chomp
  
  if input != "coffee"
    retry

  end
  feed_me_a_fruit
  
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
end  

# PHASE 4
class BestFriendError < StandardError; end
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if yrs_known < 5 
      raise BestFriendError, 'friendship not mature enough.'
    elsif fav_pastime.nil? 
      raise BestFriendError, "Muse have favorite funtime"
    end
  rescue BestFriendError
  ensure 
    # BestFriend.new(name,6,"watching movies")
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


