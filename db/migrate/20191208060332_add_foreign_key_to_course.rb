class AddForeignKeyToCourse < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :courses, :students
  end
end
