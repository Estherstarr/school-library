# Defines a student class
class Student < Person
  def initialize(age:, classroom:)
    super(age: age)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
