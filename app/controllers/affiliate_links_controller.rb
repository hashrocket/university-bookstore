class AffiliateLinksController < ApplicationController
  expose(:new_affiliate_link) { AffiliateLink.new(params[:affiliate_link]) }
  expose(:book) { new_affiliate_link.book }

  def create
    if new_affiliate_link.save
      flash[:notice] = "Affiliate link successfully created"
    else
      flash[:notice] = "Affiliate could not be created"
    end

    redirect_to :back
  end
end
