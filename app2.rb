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

hero = Human_Player.new("Hermine")
player2 = Player.new("Jordan")
player3 = Player.new("Philippe")

ennemies = []
ennemies << player2
ennemies << player3

while hero.life_points >= 0 && (player2.life_points >= 0 || player3.life_points >= 0)
    puts hero.show_state
    puts "Quelle action souhaites-tu effectuer : ?"
    puts " "
    puts "a- chercher une meilleur arme"
    puts "s- chercher à se soigner"
    choice = gets.chomp

        if choice == "a"
            hero.search_weapon
            hero.compute_damage

        elsif choice == "s"
            hero.search_health_pack
      
        else 
            "connard appuie sur le bon bouton"
        end 
        
        puts "------------------------------------------"
        puts " "
        puts "attaquer un joueur en vue"
        print "0-"
        puts  player2.show_state
        print "1-"
        puts player3.show_state
        choice2 = gets.chomp

        if choice2 == "0"
            puts hero.attacks(player2)

        elsif choice2 == "1"
            puts hero.attacks(player3)

        else "nique ta mère à faire le troll"
        end 
        
        puts "-------------------------------------------"
        puts "Les ennemis ripostent"
        ennemies.each {|players|
        if players.life_points > 0 then players.attacks(hero)end }
       
end 
    if hero.life_points > 0 
        puts "WOOOOOOOOOOOOAAH !!! Victoiiiiiiiire! La vermine a été exterminée"
    else 
        puts "Il était quand même sacrément faible, allons danser sur sa tombe."
end
