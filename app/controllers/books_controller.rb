class BooksController < ApplicationController
  expose(:books) { Book.all }
  expose(:book)
end
