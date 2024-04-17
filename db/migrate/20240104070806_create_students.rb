class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :profile_image
      t.string :role

      t.timestamps
    end
  end
end
