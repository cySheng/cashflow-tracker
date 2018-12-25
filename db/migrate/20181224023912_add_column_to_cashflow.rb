class AddColumnToCashflow < ActiveRecord::Migration[5.2]
  def change
    add_column :cashflows, :paid_by, :string
    add_column :cashflows, :reimbursed, :boolean
  end
end
