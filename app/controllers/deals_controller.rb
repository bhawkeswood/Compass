class DealsController < ApplicationController
  before_filter :require_login

  def index
    @search = Deal.search(params[:q])
    @deals = @search.result
  end

  def show
    @deal = Deal.find(params[:id])
  end

  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new deal_params
    @user = current_user
    if @deal.save
      time_offset
      ModelMailer.event_creation_notification(@user, @deal).deliver
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

  def complete
    @deals = Deal.all
  end

  private

  def deal_params
    params.require(:deal).permit(:project_name, :developer, :unit_number,
     :user_id, tasks_attributes: [:id, :description, :done, :_destroy, :due_date], commissions_attributes: [:id, :description, :amount, :commission_date, :done, :_destroy, :installment])
  end

  def time_offset
        @deal.incomplete_tasks do |task|
          if (DateTime.strptime("#{task.due_date}", format="%m/%d/%Y") - 1.days) <= DateTime.now
              ModelMailer.event_reminder_notification(@user, @deal).deliver
          end
        end

  end

end
