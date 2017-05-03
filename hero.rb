#This is the class file for the hero of the story.

class Hero
  
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def stats
   health = 1
   attack_power = 1
   defence = 1
   puts "Health: #{health}"
   puts "Attack Power: #{attack_power}"
   puts "Defence: #{defence}"
  end
  
  def help_commands(prompt)
    
    if prompt == "help"
      puts "Possible commands are"
      puts "go North"
      puts "go South"
      puts "go East"
      puts "Attack"
    else 
      puts "That is not a valid command"
    end
    
  end
end