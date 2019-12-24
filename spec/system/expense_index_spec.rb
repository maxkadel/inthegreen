RSpec.describe 'Expense index page', type: :system do
  let(:an_expense) do
    described_class.new(
      id: '123',
      expense_name: 'Water bill',
      amount_due_fixed: 22,
      amount_due_range_low: 12,
      amount_due_range_high: 25,
      next_due_date: 2019 - 12 - 31,
      recurrence: 'Every week'
    )
  end

  it 'has expected text' do
    visit '/expenses'
    expect(page).to have_content 'Expenses'
  end

  it 'has a new expense button' do
    visit '/expenses'
    expect(page).to have_content 'New expense'
  end

end
