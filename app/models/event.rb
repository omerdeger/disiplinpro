class Event < ApplicationRecord
  validates :title, presence: true  
  
  has_and_belongs_to_many :students
  belongs_to :rule
  belongs_to :period
end