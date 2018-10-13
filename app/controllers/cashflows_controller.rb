class CashflowsController < ApplicationController
  before_action :require_login

  def index
    @expenses = current_user.expenses
    @incomes = current_user.incomes
    @expense = Expense.new
    @income = Income.new
  end
end
