class CashflowsController < ApplicationController
  def index
    @expenses = Expense.all
    @incomes = Income.all
    @expense = Expense.new
    @income = Income.new
  end
end
