class CreateAcademicDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :academic_details do |t|
      t.references :student, null: false, foreign_key: true
      t.string :grade
      t.integer :year

      t.timestamps
    end
  end
end
