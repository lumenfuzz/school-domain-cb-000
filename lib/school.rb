# code here!
class School
  attr_accessor :school, :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(person, grade)
    if @roster[grade].kind_of?(Array) != true
      @roster[grade] = []
    end
    @roster[grade] << person
  end

  def grade(grade)
    return @roster[grade]
  end

  def sort
    @roster.each do |grade|
      grade.sort!
    end
  end
end
