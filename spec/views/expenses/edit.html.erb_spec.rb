require 'rails_helper'

RSpec.describe "expenses/edit", type: :view do
  let(:user) { FactoryBot.create(:user) }
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      expense_name: "MyString",
      recurrence: "MyString",
      user: user,
      amount_due_fixed: "",
      amount_due_range_low: "",
      amount_due_range_high: ""
    ))
  end

  it "renders the edit expense form" do
    render

    assert_select "form[action=?][method=?]", expense_path(@expense), "post" do

      assert_select "input[name=?]", "expense[expense_name]"

      assert_select "input[name=?]", "expense[recurrence]"

      assert_select "input[name=?]", "expense[amount_due_fixed]"

      assert_select "input[name=?]", "expense[amount_due_range_low]"

      assert_select "input[name=?]", "expense[amount_due_range_high]"
    end
  end
end
