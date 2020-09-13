require 'rails_helper'

RSpec.describe "expenses/index", type: :view do
  let(:user) { FactoryBot.create(:user) }

  before(:each) do
    assign(:expenses, [
      Expense.create!(
        expense_name: "Expense Name",
        recurrence: "Recurrence",
        user: user,
        amount_due_fixed: "27",
        amount_due_range_low: "",
        amount_due_range_high: ""
      ),
      Expense.create!(
        expense_name: "Expense Name",
        recurrence: "Recurrence",
        user: user,
        amount_due_fixed: "27",
        amount_due_range_low: "",
        amount_due_range_high: ""
      )
    ])
  end

  it "renders a list of expenses" do
    render
    assert_select "tr>td", text: "Expense Name".to_s, count: 2
    assert_select "tr>td", text: "Recurrence".to_s, count: 2
    assert_select "tr>td", text: "$27.00".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 4
  end
end
