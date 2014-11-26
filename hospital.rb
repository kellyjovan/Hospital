

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
    user_choice
  end 
  

  def user_choice
    choice = gets.chomp.to_i
    if choice == 1
      add_patient
    elsif choice == 2
      add_doctor
    elsif choice == 3
      puts "You are adding a nurse"
    elsif choice == 4
      puts "You are treating a patient"
      puts "Which patient would you like to treat?"
      patient = gets.chomp
      puts "Doctor or Nurse?"
      doctor_or_nurse = gets.chomp.downcase
      if doctor_or_nurse == "doctor"

      elsif doctor_or_nurse == "nurse" 
      end

    elsif choice == 5
      puts "You are firing someone"
    elsif choice == 6
      puts "Time passed"
    end 
  end
  def add_doctor
    puts "You are adding a doctor"
    puts "Enter a Name"
    name = gets.chomp 
    puts "Enter Specialty"
    specialty = gets.chomp
    Doctor.new(name, specialty)
    menu
  end
  def add_patient
    puts "You are adding a patient"
    puts "Enter a name"
    name = gets.chomp
    puts "Enter a age"
    age  = gets.chomp
    Patient.new(name,age)
    menu
  end
  def show_patients
    Patient.all.each do |patient|
    end

  end


end