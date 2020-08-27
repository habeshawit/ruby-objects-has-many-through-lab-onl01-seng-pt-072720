class Appointment 
  attr_accessor :patient, :doctor
  
  @@all = []
  
  
  def self.all 
    @@all
  end
  
  
end