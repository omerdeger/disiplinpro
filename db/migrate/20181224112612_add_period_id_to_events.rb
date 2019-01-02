class AddPeriodIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :period, foreign_key: true
  end
end
