class DealsController < ApplicationController
  def index
    @deals = Deal.all
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new deal_params

    if @deal.save
      redirect_to @deal
    else
      render :new
    end
  end

  def edit
    @deal = Deal.find(params[:id])
  end

  def update
    @deal = Deal.find(params[:id])
    if @deal.update_attributes deal_params
      redirect_to deal_path
    else
      render :edit
    end
  end

  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
    redirect_to deals_path
  end

  private

  def deal_params
    params.require(:deal).permit(:project_name, :developer, :unit_number,
     :user_id, tasks_attributes: [:id, :description, :done, :_destroy])
  end

end
