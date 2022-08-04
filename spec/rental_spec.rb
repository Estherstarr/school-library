# Test if the rental class is defined
require './rental'
require './book'
require './student'

describe Rental do
  context 'Test if the rental class is defined' do
    title = 'The Hobbit'
    author = 'J.R.R. Tolkien'
    name = 'Mathew Morgan'
    age = 30
    date = '01/01/2020'
    classroom = '1A'
    parent_permission = true

    book = Book.new(title: title, author: author)
    student = Student.new(age: age, name: name, classroom: classroom, parent_permission: parent_permission)
    rental = Rental.new(date: date, book: book, person: student)

    it 'should be defined' do
      expect(rental).to be_a(Rental)
    end

    it 'should have a correct date, book and person' do
      expect(rental.date).to eq(date)
      expect(rental.book).to eq(book)
      expect(rental.person).to eq(student)
    end
  end
end
