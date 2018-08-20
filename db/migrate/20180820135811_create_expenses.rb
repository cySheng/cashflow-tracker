class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.string :name
      t.decimal :amount, precision: 10, scale: 2, default: 0
      t.string :category
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
