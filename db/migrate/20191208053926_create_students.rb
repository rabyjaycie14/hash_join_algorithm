class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :student_name
      t.timestamps
    end
  end
end
