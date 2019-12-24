# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Expense, type: :model do
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

  it 'is named Water bill' do
    expect(an_expense.expense_name).to eq 'Water bill'
    expect(an_expense.amount_due_fixed).to eq 22
    expect(an_expense.amount_due_range_low).to eq 12
    expect(an_expense.amount_due_range_high).to eq 25
    expect(an_expense.next_due_date).to eq 2019 - 12 - 31
    expect(an_expense.recurrence).to eq 'Every week'
  end
end
