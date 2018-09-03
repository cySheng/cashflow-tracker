class ExpensesController < ApplicationController
  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to cashflows_path
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, :frequency, :start_date, :end_date)
  end
end
