module DealHelper

  def sum_of_incomplete_tasks(deals)
    if deals != nil
      deals.inject(0) do |all_inc_tasks, deal|
        all_inc_tasks + deal.incomplete_tasks.length
      end
    end
  end 

end
