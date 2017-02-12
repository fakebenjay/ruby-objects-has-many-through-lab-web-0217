class Appointment
  attr_accessor :name
  attr_reader :doctor, :patient

  def initialize(name, patient)
    @name = name
    @patient = patient
    self.patient.add_appointment(self)
    self.doctor.add_appointment(self)
  end

  def doctor=(doctor_name)
    @doctor = Doctor.new(doctor_name).name
  end

  def patient=(patient_name)
    @patient = Patient.new(patient_name).name
  end
end
