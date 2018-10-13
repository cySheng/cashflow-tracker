class IncomesController < ApplicationController
  before_action :require_login

  def create
    @income = current_user.incomes.new(income_params)
    if @income.save
      redirect_to cashflows_path
    end
  end

  private

  def income_params
    params.require(:cashflow).permit(:name, :frequency, :amount, :start_date, :end_date)
  end
end
