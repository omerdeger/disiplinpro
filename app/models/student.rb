class Student < ApplicationRecord
  has_and_belongs_to_many :events
  has_many :student_infos
  
  def full_name
    "#{name} #{surname}"
  end
end
