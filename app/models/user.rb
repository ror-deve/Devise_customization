class User < ApplicationRecord
  after_initialize :set_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
         
  # for ransack error
  def self.ransackable_attributes(auth_object = nil)
    super & ['email', 'password', 'password_confirmation', 'role'] 
  end

  # enum for roles
  enum role: [:admin, :mentor, :student]

  # set default role 
  def set_default_role
    self.role ||= :student
  end
end
