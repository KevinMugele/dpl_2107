class Book

  attr_reader :author_last_name, :author_first_name, :title, :publication_date

  def initialize(param)
    @author_first_name = param[:author_first_name]
    @author_last_name = param[:author_last_name]
    @title = param[:title]
    @publication_date = param[:publication_date]
  end

  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    @publication_date[-4..-1]
  end 

end
