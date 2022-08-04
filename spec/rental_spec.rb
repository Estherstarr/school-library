# frozen_string_literal: true

# Test if the rental class is defined
require './rental'
require './book'
require './student'

describe Rental do
  context 'Test if the rental class is defined' do
    before(:context) do
      @student = Student.new(age: 18, classroom: '1A', name: 'John Doe', parent_permission: true)
      @book = Book.new(title: 'The Hobbit', author: 'J.R.R. Tolkien')
      @rental = Rental.new(person, book)
    end

    it 'should be defined' do
      expect(@rental).to be_a(Rental)
    end

    it 'should be a student or a professor' do
      expect(@rental.person).to be_a(Student)
      expect(@rental.person).to be_a(Teacher)
    end

    it 'should be an existed book' do
      expect(@rental.book).to be_a(Book)
    end

    it 'should have parent_permission or can use services' do
      expect(@rental.person.parent_permission).to eq(true)
      expect(@rental.person.can_use_services?).to eq(true)
    end

    it 'should have correct number of the book and person' do
      expect(@rental.book.number).to eq(1)
      expect(@rental.person.number).to eq(1)
    end
  end
end
