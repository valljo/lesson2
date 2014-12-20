class Student
  attr_accessor :name, :age
  
  def initialize(name, age, grade)
    @name = name
    @age = age
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  attr_accessor :grade

end


student1 = Student.new('john', '12', 400)
student2 = Student.new('mark', '11', 301)

puts "Well done!" if student1.better_grade_than?(student2)
