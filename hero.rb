#This is the class file for the hero of the story.

class Hero
  
  def stats
    health = 1
    attack = 1
    defence = 1
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