class Doctor
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def appointments
    Appointments.all.select{|appointment| appointment.doctor == self}
  end
  
  def new_appointment(date, patient) 
    new_appt = Appointment.new(date,patient)
    new_appt.doctor = self
  end
  
  def patients 
    Appointment.all.select
    
  end
  
end
