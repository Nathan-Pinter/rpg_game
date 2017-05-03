#Need equipment and stats
#Health - heals full when potion
#Direction
#Boss battles
#loot

require_relative "hero"



puts "Welcome to an adventure"
print "What is your name ? > "
hero = gets.chomp
puts "Hello #{hero}"
print "For a list of commands type help > "
prompt = gets.chomp.downcase
hero = Hero.new
hero.help_commands(prompt)