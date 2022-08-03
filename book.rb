# frozen_string_literal: true

# Defines a Book class
class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title = @title, author = @author, rentals = [])
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  def create_item
    {title: @title, author: @author}
  end
end
