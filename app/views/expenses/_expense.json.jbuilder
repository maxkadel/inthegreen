json.extract! expense, :id, :expense_name, :next_due_date, :recurrence, :user, :amount_due_fixed, :amount_due_range_low, :amount_due_range_high, :created_at, :updated_at
json.url expense_url(expense, format: :json)
