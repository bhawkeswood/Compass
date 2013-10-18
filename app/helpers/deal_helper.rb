module DealHelper

  def sum_of_incomplete_tasks(deals)
    if deals != nil
      deals.inject(0) do |all_inc_tasks, deal|
        all_inc_tasks + deal.incomplete_tasks.length
      end
    end
  end 

  def all_tasks(deals)
    deals.each do |deal|
      if deal.incomplete_tasks.empty? == true
        return "<h1>Incomplete Tasks</h1>".html_safe
      else
        return "<h1>Incomplete Tasks</h1>".html_safe
      end
    end
  end

  def all_commissions(deals)
    deals.each do |deal|
      if deal.unpaid_commissions.empty? == true
        return "<h1>Unpaid Commissions</h1>".html_safe
      else
        return "<h1>Unpaid Commissions</h1>".html_safe
      end
    end
  end
end
