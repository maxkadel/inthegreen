# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

RSpec.describe 'new expense entry', type: :system, js: true do
  let(:user) { FactoryBot.create(:user) }

  before do
    login_as(user)
  end

  it 'has expected text' do
    visit '/expenses/new'
    expect(page).to have_content 'New Expense'
  end

  it 'can enter expected values' do
    visit '/expenses/new'
    fill_in 'expense_expense_name', with: 'Water bill'
    fill_in 'expense_amount_due_fixed', with: 22
    fill_in 'expense_amount_due_range_low', with: 15
    fill_in 'expense_amount_due_range_high', with: 25
    fill_in 'expense_next_due_date', with: '12/15/2019'
    fill_in 'expense_recurrence', with: 'Weekly'

    click_on 'Submit'
    expect(page).to have_content 'Water bill'
    expect(page).to have_content '$22.00'
    expect(page).to have_content '$15.00'
    expect(page).to have_content '$25.00'
    expect(page).to have_content 'December 15, 2019'
    expect(page).to have_content 'Weekly'
  end
end
