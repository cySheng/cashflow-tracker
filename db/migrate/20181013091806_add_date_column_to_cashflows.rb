class AddDateColumnToCashflows < ActiveRecord::Migration[5.2]
  def change
    add_column :cashflows, :billed_on, :date
  end
end
