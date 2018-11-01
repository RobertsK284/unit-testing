require './lib/library'
describe Library do
  library = Library.new
  books = [
    {title: 'POODR', author: 'Sandi Metz', subject: 'OOP'},
    {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
    {title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'},
    {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'},
  ]
  it 'can return a list of all books' do
    subject.list_books
    expect(subject.list_books).to eq(books)
  end

  it 'can add a new book' do
    book = {title: 'Learn To Program', author: 'Chris Pine', subject: 'Ruby'}
    subject.add_book(book)
    expect(subject.list_books).to include(book)
  end

  it 'can find a specific book' do
    subject.find_book('POODR')
    expect(subject.find_book('POODR')).to eq({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can delete a book' do
    subject.remove_book('POODR')
    expect(subject.list_books).not_to include({title: 'POODR', author: 'Sandi Metz', subject: 'OOP'})
  end

  it 'can return a list of all books by subject' do
    subject.all_books_by_subject('JS')
    expect(subject.all_books_by_subject('JS')).to eq([{title: 'Eloquent JavaScript', author: 'Marijn Haverbeke', subject: 'JS'}])
  end
end
