# Monster needs to attack
# Monster needs to die
# Monster needs to give loot

require_relative "map"
#------------------------------
class Monster

	monster_hitpoints = 5

	def monster_attack
		hero_healths -= 1
	end
	
	def check_monster_health
		If monster_hitpoints == 0
		puts "You have killed the monster"
	end
end
#------------------------------
class Hero

attr_accessor :hero_health, :hero_attack, :hero_defence
attr_accessor :x_coord, :y_coord


  def initialize
    @hero_health = 10
    @hero_attack = 1
    @hero_defence = 0
    @x_coord, @y_coord = 0, 0
  end
end

def check_health
	if hero_health > 1
		puts "Game Over"
	end
end

def take_action(prompt)
  if prompt == "help"
    puts hero.help_commands
  elsif prompt == "go north"
    puts "You have chosen to go North"
    @world.move_north(@hero)
  elsif prompt == "go south"
    puts "You have chosen to go South"
    @world.move_south(@hero)
  elsif prompt == "go east"
    puts "You have chosen to go East"
    @world.move_east(@hero)
  elsif prompt == "go west"
    puts "You have chosen to go West"
    @world.move_west(@hero)
  else
    puts "That is a wrong selection, Please try again"       
  end
end

------------------------


monster_health = 5 
monster_attack = 1

#--------------------------------------------
@world = Map.new
@hero = Hero.new

puts "Welcome"
print "what is your name ? > "
player = gets.chomp
puts "Hello #{player}"
puts " "
puts "Your stats are the following"
puts "Health: #{@hero.hero_health}"
puts "Attack power: #{@hero.hero_attack}"
puts "Defence: #{@hero.hero_defence}"
puts " "
print "What would you like to do ? > "
prompt = gets.chomp
take_action(prompt)
puts "Your new spot is #{@hero.y_coord}, #{@hero.x_coord}"