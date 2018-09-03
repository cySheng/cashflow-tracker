class CreateCashflows < ActiveRecord::Migration[5.2]
  def change
    create_table :cashflows do |t|
      t.string :name
      t.string :frequency
      t.string :type
      t.decimal :amount, precision: 10, scale: 2
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
