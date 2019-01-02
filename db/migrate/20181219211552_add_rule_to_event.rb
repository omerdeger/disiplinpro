class AddRuleToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :rule, foreign_key: true
  end
end
