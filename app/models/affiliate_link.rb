class AffiliateLink < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  def increment_visits_count!
    update_attribute(:visits_count, visits_count.succ)
  end
end

