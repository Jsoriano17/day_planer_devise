class PlansController < ApplicationController
  before_action :set_plans, only: [:show, :edit, :update, :destroy]

  def index
    @plans = current_user.plans
  end

  def show
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = current_user.plans.new(plan_params)
    if @plan.save
      redirect_to plans_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to plans_path
    else
      render :edit
    end
  end

  def destroy
    @plan.destroy
    redirect_to plans_path
  end

  private

  def set_plans
    @plan = current_user.plans.find(params[:id])
  end

  def plan_params
    params.require(:plan).permit(:date)
  end
end
