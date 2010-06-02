class BooksController < ApplicationController
  expose(:books) { Book.all }
  expose(:book)
  expose(:affiliate_link) { AffiliateLink.find(params[:affiliate_id]) if params[:affiliate_id].present? }
end
