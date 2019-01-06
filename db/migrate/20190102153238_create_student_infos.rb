class CreateStudentInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :student_infos do |t|
      t.integer :classroom
      t.string :branch
      t.integer :school_number
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
