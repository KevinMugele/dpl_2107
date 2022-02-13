# frozen_string_literal: true

class Book
  attr_reader :author_last_name, :author_first_name, :title, :publication_date, :author, :publication_year,
              :checkout_counter
  attr_writer :checked_out

  def initialize(param)
    @author_first_name = param[:author_first_name]
    @author_last_name = param[:author_last_name]
    @title = param[:title]
    @publication_date = param[:publication_date]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_year = @publication_date[-4..]
    @checked_out = false
    @checkout_counter = 0
  end

  def checked_out?
    @checked_out
  end

  def add_to_counter
    @checkout_counter += 1
  end
end
