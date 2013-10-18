class Commission < ActiveRecord::Base
	belongs_to :deal
	has_one :user, through: :deals

  scope :complete, -> { where(done: true) }
  scope :incomplete, -> { where(done: false) }

  def formatted_price
		price_in_dollars = amount.to_f/ 1
		sprintf("%.2f", price_in_dollars)  	
	end 
end
