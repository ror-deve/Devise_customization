class Student < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    super & ['first_name', 'last_name', 'dob', 'profile_image', 'role'] 
  end
end
