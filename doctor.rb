class Doctor
	ALL = []
	def initialize(name, specialty)
		@name = name
		@specialty = specialty
		@experience = rand(1..10)
		ALL << self
	end
	def self.all
	ALL	
	end


end