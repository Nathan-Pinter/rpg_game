#This is the class file for the hero of the story.

class Hero
  
attr_accessor :name, :hero_health, :hero_attack, :hero_defence
attr_accessor :x_coord, :y_coord

  HERO_MAX_HEALTH = 10

  def initialize
    @name = name
    @hero_health = HERO_MAX_HEALTH
    @hero_attack = 1
    @hero_defence = 0
    @x_coord, @y_coord = 0, 0
  end
  
  def hero_alive
    @hero_health > 0
  end
  
  def damage(amount)
    @hero_health -= amount
  end
  
  def help_commands
    puts 'Possible commands are'
    puts 'go North'
    puts 'go South'
    puts 'go East'
    puts 'Attack'
    puts 'End Game'
  end
end