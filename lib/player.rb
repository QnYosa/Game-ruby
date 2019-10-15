class  Player 
    attr_accessor :name, :life_points

    def initialize (player, life = 10)
        @name = player.to_s
        @life_points = life
    end

    def show_state
        puts "#{@name} a #{@life_points} points de vie. "
    end 

    def gets_damage (damage)
    damage = damage.to_i
    @life_points = @life_points - damage
        if @life_points <= 0
            puts "#{@name} a été tué." 
        end 
    end 

    def attacks(victim)
    puts "#{@name} attaque #{victim.name} "
    strike = compute_damage
    puts "#{@name} a infligé #{strike} de degats à #{victim.name}"
     victim.gets_damage(strike)
    end 

    def compute_damage
        return rand(1..6)
    end 

end

class Human_Player < Player
    attr_accessor :weapon_level

    def initialize (name)
    @life_points = 100
    @weapon_level = 1
    @name = name 
    end 

    def show_state 
        puts "#{name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}"
    end
    
    def compute_damage 
        rand(1..6) * @weapon_level
    end     

    def search_weapon
        risky_dice = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{risky_dice}"
        if risky_dice > @weapon_level 
            puts "Génial c'est l'arme parfaite pour poutrer des grand-mères"
            @weapon_level = risky_dice 
        else 
        puts "M#@!$ mais c'est quoi cette arme de #@£$&# ! "
        end 
    end

    def search_health_pack
        healthy_dice = rand(1..6)
            if healthy_dice == 1 
                puts "Et non connard t'as rien trouvé"
            elsif healthy_dice == 2 && healthy_dice <= 5
                puts "Tu as trouvé un pack de 50 points de vie."
                    if @life_points <= 50
                        @life_points + 50

                    else 
                        @life_points + (100 - @life_points)
                        puts "Vie restaurée au maximum, tu peux retourner au combat chakal"
                    end 
            else healthy_dice == 6
                puts "Wow, t'as trouvé un pack de 80 points de vie"
                    if @life_points <= 20
                        @life_points + 80
        
                    else 
                        @life_points + (100-life_points)
                        puts "Vie restaurée au max, retourne au combat, du sang doit couler"
                    end
            end 
    end
end