# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ExpensesController, type: :controller do
    it "lists @expenses" do
      expense = Expense.create
      get :index
      expect(assigns(:expenses)).to eq([expense])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
end
