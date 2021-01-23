# Write a ruby program to create array of hash of student records with each hash record having keys like name, roll no, marks


class Student
  @@students = []
  PASS_MARKS = 35

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

  def self.pass?(name)
  	student = @@students.find { |student| student[:name] == name }
  	return student[:marks] >= PASS_MARKS
  end

  def self.grade(name)
    student = @@students.find { |student| student[:name] == name }

    case student[:marks]
    when 80..100
      return "A"
    when 60...80
      return "B"
    when 40...60
      return "C"
    else
      return "D"
    end
  end

  def self.set_percentages
    @@students.each { |student| student[:percentage] = (student[:marks] * 100)/100 }
    # @@students = @@students.map { |student| student[:percentage] = (student[:marks] * 100)/100 }
  end
end

