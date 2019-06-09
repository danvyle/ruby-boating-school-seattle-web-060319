
class Instructor

@@all = []

attr_accessor :name, :student

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(test_name, student)
     passed_test = BoatingTest.all.find {|test| student == test.student && test_name == test.name}
      #boatingtest whose names match and student name match
      # 1..10).find     { |i| i % 5 == 0 and i % 7 == 0 }
      if passed_test == nil
        #call the class and method with dot notation
        student.add_boating_test(test_name, "passed", self)
      else
        passed_test.status="passed"
      end
  end

  # Instructor#fail_student should take in a student instance and test name. Like #pass_student, it should try to find a matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the name, the matching student, and the status 'failed'.

  def fail_student(test_name, student)
    fail_test = BoatingTest.all.find {|test| student == test.student && test_name == test.name}

      if fail_test == nil
        student.add_boating_test(test_name, "failed", self)
      else
        fail_test.status="failed"
      end

  end



end
