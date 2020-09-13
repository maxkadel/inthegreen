FactoryBot.define do
  factory :expense do
    expense_name { "MyString" }
    next_due_date { "2020-09-13" }
    recurrence { "MyString" }
    user { "" }
    amount_due_fixed { "" }
    amount_due_range_low { "" }
    amount_due_range_high { "" }
  end
end
