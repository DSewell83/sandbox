class Door
        attr_accessor :color
	attr_accessor :open
        attr_accessor :wet
	
        def open_door
		self.open = true
		p "The door is open"
	end

	def close_door
		self.open = false
		p "The door is closed"
	end

	def is_open?
		if self.open == true
			p "The door is already opened"
		else
			p "The door is not opened"
		end
        end
        
        def dry
              self.wet = false
        end
        
        def paint(blue)
                if self.is_open
                    self.color = blue
                    self.wet = true
                else
                        p "open the door before painting"
                end
        end
        
        def close_door
                if (self.wet == true)
                        p "please don't close wet doors"
                else
                  #open/close door code blocks here
                  #front_door.paint ("blue") - method
                  #front_door.dry - method
                  #front_door.paint( 3, :red ).dry( 30 ).close(
                end
        end
end

front_door = Door.new
p "closing the door"
front_door.close_door
p "is it open?"
front_door.is_open?
p "opening the door"
front_door.open_door
p "is it open?"
front_door.is_open?
