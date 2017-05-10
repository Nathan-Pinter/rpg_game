# Need equipment and stats
# Health - heals full when potion
# Direction
# Boss battles
# loot
# help menus are "go north", "go south", "go east", "go west"

require_relative "hero"
require_relative "map"

def take_action(prompt)
  if prompt == "help"
    puts @hero.help_commands
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
  elsif prompt == "end game"
    puts "I'm sorry you have to leave"
    puts "GAME OVER"
    @hero.hero_health = 0
  else
    puts "That is a wrong selection, Please try again"       
  end
end

#---------------------Start-------------------
@world = Map.new
@hero = Hero.new

puts "Welcome to an adventure"
print "what is your name ? > "
player = gets.chomp
puts "Hello #{player}"
puts " "

while @hero.hero_health > 0
  puts "Your stats are the following"
  puts "Health: #{@hero.hero_health}"
  puts "Attack power: #{@hero.hero_attack}"
  puts "Defence: #{@hero.hero_defence}"
  puts " "
  print "What would you like to do ? > "
  prompt = gets.chomp
  take_action(prompt)
  puts "Your new spot is #{@hero.y_coord}, #{@hero.x_coord}"
  @hero.hero_health -= 1
end