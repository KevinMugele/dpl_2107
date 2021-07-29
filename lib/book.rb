class Book

  attr_reader :author_last_name, :author_first_name, :title, :publication_date, :author, :publication_year

  def initialize(param)
    @author_first_name = param[:author_first_name]
    @author_last_name = param[:author_last_name]
    @title = param[:title]
    @publication_date = param[:publication_date]
    @author = "#{@author_first_name} #{@author_last_name}"
    @publication_year = @publication_date[-4..-1]
  end
end
