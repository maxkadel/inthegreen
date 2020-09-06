# frozen_string_literal: true

class ExpensesController < ApplicationController
  before_action :authenticate_user!

  helper FormattedTimeHelper

  def index
    @expenses = current_user.expenses
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    current_user.expenses.new
  end

  def create
    @expense = current_user.expenses.create(expense_params)

    @expense.save
    redirect_to @expense
  end

  private

  def expense_params
    params.require(:expense).permit(:expense_name, :amount_due_fixed, :amount_due_range_low, :amount_due_range_high, :next_due_date, :recurrence, :user_id)
  end
end
