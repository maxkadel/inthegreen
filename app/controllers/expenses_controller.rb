class ExpensesController < ApplicationController
  def show
    @expense = Expense.find(params[:id])
  end

  def new
  end

  def create
    @expense = Expense.new(expense_params)

    @expense.save
    redirect_to @expense
  end

  private
  def expense_params
    params.require(:expense).permit(:expense_name, :amount_due_fixed, :amount_due_range_low, :amount_due_range_high, :next_due_date)
  end
end
