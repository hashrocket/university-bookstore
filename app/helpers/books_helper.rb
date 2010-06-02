module BooksHelper

  def book_column_class(index)
    case index
    when 0
      column_class = "first"
    when 3
      column_class = "last"
    end
    column_class
  end

end
