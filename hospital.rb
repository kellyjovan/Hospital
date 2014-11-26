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
      puts "You are adding a patient"
      puts "Enter a name"
      name = gets.chomp
      puts "Enter a age"
      age  = gets.chomp
      Patient.new(name,age)
      menu
    elsif choice == 2
      puts "You are adding a doctor"
    elsif choice == 3
      puts "You are adding a nurse"
    elsif choice == 4
      puts "You are treating a patient"
    elsif choice == 5
      puts "You are firing someone"
    elsif choice == 6
      puts "Time passed"
    end 
  end
end