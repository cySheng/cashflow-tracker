class AddDefaultColumnToReimbursed < ActiveRecord::Migration[5.2]
  def change
    change_column_default :cashflows, :reimbursed, false
  end
end
