class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(patient,date)
    Appointment.new(patient,self,date)
  end
  
    
  def self.all 
    @@all 
  end
  
  def appointments
    appointments = Appointment.all 
    appointments.select do |a|
      a.doctor == self
    end
  end 
  
  def patients
    appointments.collect do |a|
        a.patient 
    end
  end
  
  
end 