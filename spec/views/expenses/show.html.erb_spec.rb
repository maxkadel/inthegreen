require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  let(:user) { FactoryBot.create(:user) }

  before(:each) do
    @expense = assign(:expense, Expense.create!(
      expense_name: "Expense Name",
      recurrence: "Recurrence",
      user: user,
      amount_due_fixed: "",
      amount_due_range_low: "",
      amount_due_range_high: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Expense Name/)
    expect(rendered).to match(/Recurrence/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
