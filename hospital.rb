require_relative './patient.rb'
require_relative './doctor.rb'
require_relative './nurse.rb'
class Hospital
  def initialize(name, location)
    @name = name
    @rating = 5 
    @location = location
    menu
  end
  
  def menu
    puts "1. Add a patient"
    puts "2. Add a doctor"
    puts "3. Add a nurse"
    puts "4. Treat a patient"
    puts "5. Fire someone"
    puts "6. Time passed"
    puts "7. Show Patients"
    puts "8. Show Doctors"
    puts "9. Show Nurses"
    user_choice
  end 

  def user_choice
    choice = gets.chomp.to_i
    if choice == 1
      add_patient
    elsif choice == 2
      add_doctor
    elsif choice == 3
      add_nurse
    elsif choice == 4
      treat
    elsif choice == 5
      puts "You are firing someone"
    elsif choice == 6
      puts "Time passed"
    elsif choice == 7
      show_patients
    elsif choice == 8
      show_doctors
    elsif choice == 9
      show_nurses
    end 
    menu
  end

  def add_doctor
    puts "You are adding a doctor"
    puts "Enter a Name"
    name = gets.chomp 
    puts "Enter Specialty"
    specialty = gets.chomp
    Doctor.new(name, specialty)
  end

  def add_patient
    puts "You are adding a patient"
    puts "Enter a name"
    name = gets.chomp
    puts "Enter a age"
    age  = gets.chomp
    Patient.new(name,age)
  end

  def add_nurse
    puts "You are adding a doctor"
    puts "Enter a Name"
    name = gets.chomp 
    Nurse.new(name)
  end

  def show_patients
    Patient.all.each do |patient|
      puts "#{patient.name}"
      puts "Alive: #{patient.alive}"
      puts "Health: #{patient.health}"
      puts " "
    end
  end

  def show_doctors
    Doctor.all.each do |doctor|
      puts "#{doctor.name}"
    end
  end

  def show_nurses
    Nurse.all.each do |nurse|
      puts "#{nurse.name}"
    end
  end

  def time_passed
    Patient.all.each do |patient|
      self.time_effects
    end
  end

  def treat
    puts "You are treating a patient"
    puts "Which patient would you like to treat?"
    show_patients
    patient = gets.chomp
    puts "Doctor or Nurse?"
    doctor_or_nurse = gets.chomp.downcase
    if doctor_or_nurse == "doctor"
      show_doctors
    elsif doctor_or_nurse == "nurse" 
      show_nurses
    end
  end
end
Hospital.new("Taco Bell", "South Dakota")