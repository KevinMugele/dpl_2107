# frozen_string_literal: true

require './lib/book'

RSpec.describe Book do
  it 'exists' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    expect(book).to be_a Book
  end

  it 'has a title' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    expect(book.title).to eq('To Kill a Mockingbird')
  end

  it 'has a author' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    expect(book.author).to eq('Harper Lee')
  end

  it 'has a publication year ' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    expect(book.publication_year).to eq('1960')
  end

  it 'is checked out?' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    expect(book.checked_out?).to eq false
  end

  it 'adds to counter' do
    book = Book.new({ author_first_name: 'Harper', author_last_name: 'Lee', title: 'To Kill a Mockingbird',
                      publication_date: 'July 11, 1960' })

    book.add_to_counter
    expect(book.checkout_counter).to eq(1)
  end
end
