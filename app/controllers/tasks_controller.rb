class TasksController < ApplicationController

  def update
    @deal = Deal.find(params[:deal_id])
    @task = @deal.tasks.find(params[:id])
    @task.update_attributes(params[:task])
      respond_to do |format|
        format.html
        format.js
      end
  end

end