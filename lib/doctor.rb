class Doctor
  attr_accessor :name 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    Appointments.all.select{|appointment| appointment.doctor == self}
  end
  
  def new_appointment(date, patient) 
    new_appt = Appointment.new(date,patient)
    new_appt.doctor = self
  end
  
  def patients 
    appointments.map{|appt| appt.patient}
  end
  
end
