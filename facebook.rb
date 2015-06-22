#Attributes:
#name
# age
# birthday
# location
# relationship_status
# num_friends
# pictures
# wall

# Actions:
#poke
#post on wall
#add friend
#remove friend
#block
require 'pry'

class User
  attr_accessor :name, :email, :num_friends, :friends, :photos, :wall #reader and writeer for name and email attributes
  attr_writer :password #writer for password attribute

  
  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
    @num_friends = 0
    @friends = []
    @wall = {}
    @photos = []
  end
 

  
  def upload_photo(new_photo)
    @photos.push(new_photo)
  end
  
  def add_friends(new_friend)
    @num_friends = @num_friends + 1
    @friends.push(new_friend)
    new_friend.num_friends += 1
    new_friend.friends.push(self)
  end

  
  #post on someone's wall
  #who's wall to post on
  #what to post
  def post_on_wall(user, post)
    user.wall[self.name] = post
  end
  
  
 
end #end class


puts ariana = User.new("Ariana Alatis", "cuddlingpuppies@aol.com", "m&ms4lyfe")
  
puts nadja = User.new("Nadja Umlauf", "ilikekittens@gmail.com", "snickersrdabest")
  

ariana.add_friends(nadja)
puts "ariana's friends"
puts ariana.friends.first
puts "nadja's fiends"
puts nadja.friends.first


puts kaitlin = User.new("Kaitlin Young", "k@al.com", "puppies6767")

nadja.add_friends(kaitlin)
puts "nadja's fiends" 
puts nadja.friends[1]
puts "kaitlin's fiends" 
puts kaitlin.friends.first
nadja.post_on_wall(kaitlin, "youre the best coder ever!!!!!")

puts kaitlin.wall


 



