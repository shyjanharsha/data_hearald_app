class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table unless table_exists?(:students) do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :gender, default: 0 # Default value corresponds to the first enum value
      t.string :address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
