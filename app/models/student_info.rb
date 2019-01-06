class StudentInfo < ApplicationRecord
  belongs_to :students, required: false
  
  def sinif
    "#{classroom} #{branch}"
  end
end
