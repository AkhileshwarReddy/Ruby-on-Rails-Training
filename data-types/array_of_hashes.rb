# Write a ruby program to create array of hash of student records with each hash record having keys like name, roll no, marks


class Student
  @@students = []

  def initialize(name, roll_no, marks)
    new_student = {}
    new_student[:name] = name
    new_student[:roll_no] = roll_no
    new_student[:marks] = marks

    @@students.push(new_student)
  end

  def self.all
  	return @@students
  end
end

