class ExpensesController < ApplicationController
  before_action :require_login

  def create
    @expense = current_user.expenses.new(expense_params)
    if @expense.save
      redirect_to root_path
    else
      flash.now[:error] = "Something went wrong."
      # @expenses = current_user.expenses
      # @incomes = current_user.incomes
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, :frequency, :start_date, :end_date, :description, :billed_on)
  end
end
