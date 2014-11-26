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
	def treat_patient(patient)
		patient.add_2 
		puts "#{doctor.name} treated #{patient.name} "

	end



end