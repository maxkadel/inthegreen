class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :expense_name
      t.money :amount_due_fixed
      t.money :amount_due_range_low
      t.money :amount_due_range_high
      t.date :next_due_date
      t.string :recurrence, :limit => 45

      t.timestamps
    end
  end
end
