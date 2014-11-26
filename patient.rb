class Patient
	attr_accessor :name, :age, :problem, :health, :alive
	ALL = []
	def initialize(name,age)
		@name = name
		@age = age
		@alive = true
		@health = rand(1..10)
		ALL << self
	end
	
	def self.all
	ALL	
	end
	def add_2
		@health = @health + 2
	end
	def add_1
		@health = @health + 1
	end
	def time_effects
		@health = @health - 1
		if health <= 0
			@alive = false			
		end
	end
end