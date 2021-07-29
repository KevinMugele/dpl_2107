class Library

  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
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
    publication_time_frame[:start] = find_publication_year(author).sort[0]
    publication_time_frame[:end] = find_publication_year(author).sort[-1]
    publication_time_frame
  end





end
