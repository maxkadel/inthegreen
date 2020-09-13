# frozen_string_literal: true

class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  helper FormattedTimeHelper

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = current_user.expenses
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    @expense = Expense.find(params[:id])
  end

  # GET /expenses/new
  def new
    @expense = current_user.expenses.new
  end

  # GET /expenses/1/edit
  def edit
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = current_user.expenses.create(expense_params)

    @expense.save
    respond_to do |format|
      if @expense.save
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:expense_name, :amount_due_fixed, :amount_due_range_low, :amount_due_range_high, :next_due_date, :recurrence, :user_id)
    end
end
