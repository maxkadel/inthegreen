# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe 'Expense index page', type: :system, js: true do
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
  let(:user) { FactoryBot.create(:user) }

  before do
    login_as(user)
    visit '/expenses'
  end

  it 'has expected text' do
    expect(page).to have_content 'Expenses'
  end

  # it 'shows expected values' do
  #   expect(page).to have_content 'Water bill'
  #   expect(page).to have_content '$22.00'
  #   expect(page).to have_content '$15.00'
  #   expect(page).to have_content '$25.00'
  #   expect(page).to have_content 'December 15, 2019'
  #   expect(page).to have_content 'Weekly'
  # end

  it 'has a new expense button' do
    expect(page).to have_content 'New expense'
  end
end
