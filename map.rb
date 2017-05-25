# This is the map and movement class
# The map is a 10X10 square

class Map
  
  Map_height = 10
  Map_width = 10
  
  def initialize
    @rooms = Array.new(Map_height, Array.new(Map_width))
  end
  
  def move_north(move_player)
    move_player.y_coord -= 1 if move_player.y_coord > 0
  end
  
  def move_south(move_player)
    move_player.y_coord += 1 if move_player.y_coord < Map_height - 1
  end
  
  def move_east(move_player)
    move_player.x_coord += 1 if move_player.x_coord < Map_width - 1
  end
  
  def move_west(move_player)
    move_player.x_coord -= 1 if move_player.x_coord > 0
  end
  
  def get_room_of(move_player)
    @rooms[move_player.x_coord][move_player.y_coord] ||= Room.new
  end
  
end