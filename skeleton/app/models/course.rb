class Course < ActiveRecord::Base
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: "Enrollment"

  has_many :enrolled_students,
    through: :enrollments,
    source: :student

  belongs_to :prerequisite,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: "Course"

  belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: "User"

end

#
# class Employee < ApplicationRecord
#   has_many :subordinates, class_name: "Employee",
#                           foreign_key: "manager_id"
#
#   belongs_to :manager, class_name: "Employee"
# end
