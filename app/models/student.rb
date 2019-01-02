class Student < ApplicationRecord
  has_and_belongs_to_many :events
  
  def full_name
    "#{name} #{surname}"
  end
end
