#This is the class file for the hero of the story.

class Hero
  
attr_accessor :name, :hero_health, :hero_attack, :hero_defence
attr_accessor :x_coord, :y_coord

  def initialize
    @name = name
    @hero_health = 10
    @hero_attack = 1
    @hero_defence = 0
    @x_coord, @y_coord = 0, 0
  end
  
  def help_commands
    puts "Possible commands are"
    puts "go North"
    puts "go South"
    puts "go East"
    puts "Attack"
  end
end