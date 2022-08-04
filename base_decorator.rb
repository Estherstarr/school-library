# Defines a base_decorator class
require_relative 'nameable'

class BaseDecorator < Nameable
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
