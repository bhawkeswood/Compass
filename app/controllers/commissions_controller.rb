class CommissionsController < ApplicationController
  def update
  	commission = Commission.find(params[:id])
    commission.done = !commission.done

    commission.save

    render nothing: true
  end
end
