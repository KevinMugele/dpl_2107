# frozen_string_literal: true

class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end
  end

  def find_publication_year(author)
    publication_years_per_author = []
    author.books.each do |book|
      publication_years_per_author << book.publication_year
    end
    publication_years_per_author
  end

  def publication_time_frame_for(author)
    publication_time_frame = {}
    publication_time_frame[:start] = find_publication_year(author).min
    publication_time_frame[:end] = find_publication_year(author).max
    publication_time_frame
  end

  def checkout(book)
    if @books.include?(book) == true && book.checked_out? == false
      @checked_out_books << book
      book.add_to_counter
      book.checked_out = true
      true
    else
      false
    end
  end

  def return(book)
    book.checked_out = false
    @checked_out_books.delete(book)
  end

  def most_popular_book
    @books.max_by(&:checkout_counter)
  end
end
