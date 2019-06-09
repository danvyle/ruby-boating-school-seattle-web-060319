class BoatingTest

  @@all = []

  attr_accessor :name, :student, :status, :instructor

  def initialize(name, student, status, instructor)
    @name = name
    @student = student
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

end
