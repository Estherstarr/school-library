# Writing test for the book class
require './book'

describe Book do
  context 'Test the book class' do
    before(:context) do
      title = 'The Hobbit'
      author = 'J.R.R. Tolkien'
      @book = Book.new(title: title, author: author)
    end

    it 'If it is an instance of class' do
      expect(@book).to be_instance_of(Book)
    end

    it 'If it has a title' do
      expect(@book.title).to eq('The Hobbit')
    end

    it 'If it has an author' do
      expect(@book.author).to eq('J.R.R. Tolkien')
    end
  end
end
