puts "<< --- Student seed data start"
    students = [
        { first_name: 'John', last_name: 'Doe', date_of_birth: Date.new(2000, 1, 1), gender: 'male', address: '123 Main St', phone_number: '555-1234', email: 'john.doe@example.com' },
        { first_name: 'Jane', last_name: 'Smith', date_of_birth: Date.new(1998, 5, 15), gender: 'female', address: '456 Oak St', phone_number: '555-5678', email: 'jane.smith@example.com' }
    ]
    Student.destroy_all
    students.each { |attributes| Student.create(attributes) }
puts "Student seed data end --- >>"

puts "<< --- Academic_details seed data start"
    academic_details = [
        { student_id: Student.first.id, grade: 'A', year: 2022 },
        { student_id: Student.second.id, grade: 'B', year: 2022 }
    ]
    puts students
    puts academic_details
    AcademicDetail.destroy_all
    academic_details.each { |attributes| AcademicDetail.create(attributes) }
puts "Academic_details seed data end --- >>"



