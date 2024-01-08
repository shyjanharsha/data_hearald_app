class Student < ApplicationRecord
    has_one :academic_detail

    enum gender: { male: 0, female: 1 }

    validates :first_name, :last_name, :date_of_birth, :gender, :address, :phone_number, :email, presence: true
    validates :email, uniqueness: true

end
