require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Benjamin")
player2 = Player.new("Jordan")
player3 = Player.new("Philippe")

puts "A ma droite #{player1.name} !!"
puts "A ma gauche #{player2.name} !!!"
puts "Et... #{player3.name} m'indique qu'il déclare forfait comme une petite baltringue"

print ">"
puts player1.show_state
print ">"
puts player2.show_state

puts "Et sans plus tarder let's get ready too RUUUUUUUUMBLEEEEEEEEEE !!!"
puts "*ring bell*"
puts "FIIIIIIIIIIIGHT !! "

puts "----------------------FIGHT------------------------"

    while player1.life_points >= 0 player2.life_points >= 0
    puts player2.show_state
    puts player1.attacks(player2)
    if player2.life_points <= 0 
        break
    end 
   puts player1.show_state 
    puts player2.attacks(player1) 
        
    end

binding.pry