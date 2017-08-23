class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def doctor_name
    Doctor.find(doctor_id).name
  end

  def patient_name
    Patient.find(patient_id).name
  end

  def readable_datetime
    self.appointment_datetime.strftime('%B %d, %Y at %H:%M')
  end

end
