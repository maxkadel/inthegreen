require 'rails_helper'

RSpec.describe "expenses/new", type: :view do
  let(:user) { FactoryBot.create(:user) }

  before(:each) do
    assign(:expense, Expense.new(
      expense_name: "MyString",
      recurrence: "MyString",
      user: user,
      amount_due_fixed: "",
      amount_due_range_low: "",
      amount_due_range_high: ""
    ))
  end

  it "renders new expense form" do
    render

    assert_select "form[action=?][method=?]", expenses_path, "post" do

      assert_select "input[name=?]", "expense[expense_name]"

      assert_select "input[name=?]", "expense[recurrence]"

      assert_select "input[name=?]", "expense[amount_due_fixed]"

      assert_select "input[name=?]", "expense[amount_due_range_low]"

      assert_select "input[name=?]", "expense[amount_due_range_high]"
    end
  end
end
