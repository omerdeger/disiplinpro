class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :school_name
      t.string :manager
      t.string :chairman
      t.string :member1
      t.string :member2
      t.string :member3
      t.string :member4

      t.timestamps
    end
  end
end
