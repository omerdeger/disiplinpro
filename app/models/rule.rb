class Rule < ApplicationRecord
  has_many :events
  
  
  def rule_snippet
    "#{item_number} | #{law}"
  end
end