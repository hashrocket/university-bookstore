class BooksController < ApplicationController
  before_filter :tally_visit

  expose(:books) { Book.all }
  expose(:book)
  expose(:affiliate_link) { AffiliateLink.find(params[:affiliate_id]) if params[:affiliate_id].present? }

  protected

  def tally_visit
    affiliate_link.increment_visits_count! if affiliate_link.present?
  end
end
