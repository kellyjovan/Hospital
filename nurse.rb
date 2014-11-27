class Nurse
  ALL = []
  attr_accessor :name
  def initialize(name)
    @name = name
    ALL << self
  end
  def self.all
  ALL 
  end
  def treat_patient(patient)
    patient.add_1 
    puts "#{nurse.name} treated #{patient.name} "

  end
end