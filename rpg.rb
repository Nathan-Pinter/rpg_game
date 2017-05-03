#Need equipment and stats
#Health - heals full when potion
#Direction
#Boss battles
#loot

require_relative "hero"


puts "Welcome to an adventure"
print "What is your name ? > "
hero = Hero.new(gets.chomp)
puts "Hello #{hero.name}"
puts "Your starting stats are"
puts "Health ....."
print "For a list of commands type help > "
prompt = gets.chomp.downcase
hero.help_commands(prompt)