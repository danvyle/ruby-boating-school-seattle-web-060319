

class Student

  @@all = []

  attr_accessor :first_name

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(name, self, status, instructor)
  end

  def self.find_student(first_name)
    @@all.find {|student| student.first_name.casecmp(first_name) == 0}
  end
# binding.pry


  def grade_percentage
    all_tests = BoatingTest.all.select do |tests|
       tests.student == self
        # binding.pry
    end
    passed_tests = all_tests.select do |tests|
          tests.status == "passed"
    end

    passed_percentage = 100 * (passed_tests.length.to_f / all_tests.length.to_f)
    return passed_percentage
    # binding.pry
    end



end
    #need to find out which tests the student has taken and find how many tests have passed divided by total number of tests. don't forget to do .to_f

# Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
