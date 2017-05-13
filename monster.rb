require_relative "hero"

class Monster
   attr_accessor :monster_health, :monster_attack, :monster_defence

  MONSTER_MAX_HEALTH = 5

  def initialize
    @monster_health = MONSTER_MAX_HEALTH
    @monster_attack = 1
    @monster_defence = 0
  end 
  
  # Check if monster is alive
  def monster_alive
     @monster_health > 0 
  end
  
  # Damage taken from player
  def damage(amount)
    @monster_health -= amount
  end
  
  def combat(player)
    while player.hero_alive
      puts "You attacked Monster for #{player.hero_attack}"
      damage(player.hero_attack)
      break unless monster_alive
      puts "Monster hits you for #{@monster_attack}"
      player.damage(@monster_attack)
    end
  end
  
end