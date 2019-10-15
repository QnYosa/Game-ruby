require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "-----------------------------------------------------------------------------------"
print"|"
puts "WEAK ASS EXTERMINATOR ULTIMATE RUMBLE 4: YOU SHALL NOT PASS EDITION ULTIMATE GOLD|"
puts "-----------------------------------------------------------------------------------"
puts "                                 Un seul objectif: Survivre !"
puts " "
puts " "
puts "'Un jeu jouissif': télérama "
puts "'Sans aucun doute le jeu de l'année': Les inrocks"
puts "'Le jeu vidéo est bel est bien un art au cas où vous en doutiez : Anonyme célèbre'"
puts " "
puts " " 

puts "Entrez votre nom "
print "> :"

name = gets.chomp 
hero = Game.new(name)

while hero.is_still_going_? == true 
    hero.show_players
end 
