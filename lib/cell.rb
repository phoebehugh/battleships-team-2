# class Cell

# attr_accessor :contents
# attr_reader :shot
# alias_method :add_content, :contents=
# alias_method :shot?, :shot

#   def fire_shot
#     raise 'Already been shot' if shot?
#     contents.hit!
#     @shot = true
#   end

# end

class Cell
	attr_accessor :content

	def initialize
		@shot = false
	end

	def shot?
		@shot
	end

	def receive_shot
		raise "Already been shot" if shot?
		@shot = true
		content.hit!
	end
end
