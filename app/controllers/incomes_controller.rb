class IncomesController < ApplicationController
  def create
    @income = Income.new(income_params)
    if @income.save
      redirect_to cashflows_path
    end
  end

  private

  def income_params
    params.require(:cashflow).permit(:name, :frequency, :amount, :start_date, :end_date)
  end
end
