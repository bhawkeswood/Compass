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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def deal_params
    params.require(:deal).permit(:project_name, :developer, :unit_number, :user_id)
  end

end
