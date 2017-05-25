# Need equipment and stats
# Health - heals full when potion
# Direction
# Boss battles
# loot
# help menus are "go north", "go south", "go east", "go west"

require_relative 'hero'
require_relative 'map'
require_relative 'monster'

def take_action(prompt)
  if prompt == 'help'
    puts @hero.help_commands
  elsif prompt == 'go north'
    puts 'You have chosen to go North'
    @world.move_north(@hero)
  elsif prompt == 'go south'
    puts 'You have chosen to go South'
    @world.move_south(@hero)
  elsif prompt == 'go east'
    puts 'You have chosen to go East'
    @world.move_east(@hero)
  elsif prompt == 'go west'
    puts 'You have chosen to go West'
    @world.move_west(@hero)
  elsif prompt == 'attack'
    @monster.combat(@hero)
  elsif prompt == 'end game'
    puts "I'm sorry you have to leave"
    @hero.hero_health = 0
  else
    puts 'That is a wrong selection, Please try again'
  end
end

def random_monster(random_number)
  if random_number > 5
    @monster = Monster.new
    puts 'A monster blocks your way'
    puts ' '
    @monster.combat(@hero)
  end
end

#---------------------Start-------------------
@world = Map.new
@hero = Hero.new

puts 'Welcome to an adventure'
print 'What is your name ? > '
player = gets.chomp
puts "Hello #{player}"
puts ' '

while @hero.hero_alive
  puts 'Your stats are the following'
  puts "Health: #{@hero.hero_health}"
  puts "Attack power: #{@hero.hero_attack}"
  puts "Defence: #{@hero.hero_defence}"
  puts ' '
  print 'What would you like to do ? > '
  prompt = gets.chomp
  puts '---------------'
  take_action(prompt)
  puts "Your current position is #{@hero.y_coord}, #{@hero.x_coord}"
  random_monster(rand(11))
end
puts "#{player} has #{@hero.hero_health} Health"
puts 'Your Hero has fallen'
puts 'Game OVER'