class AddUserToCashflowTable < ActiveRecord::Migration[5.2]
  def change
    add_reference :cashflows, :user, index: true, foreign_key: true
  end
end
