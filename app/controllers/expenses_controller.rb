class ExpensesController < ApplicationController
  before_action :require_login

  def create
    @expense = current_user.expenses.new(expense_params)
    if @expense.save
      redirect_to cashflows_path
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, :frequency, :start_date, :end_date, :description)
  end
end
