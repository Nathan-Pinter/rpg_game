# This is the map and movement class
# The map is a 10X10 square

class Map
  
  Map_height = 10
  Map_width = 10
  
  def initialize
    @rooms = Array.new(Map_height, Array.new(Map_width))
  end
  
  def move_north(move)
    move.y_coord -= 1 if move.y_coord > 0
  end
  
  def move_south(move)
    move.y_coord += 1 if move.y_coord < Map_height - 1
  end
  
  def move_east(move)
    move.x_coord += 1 if move.x_coord < Map_width - 1
  end
  
  def move_west(move)
    move.x_coord -= 1 if move.x_coord > 0
  end
  
  def get_room_of(move)
    @rooms[move.x_coord][move.y_coord] ||= Room.new
  end
  
end