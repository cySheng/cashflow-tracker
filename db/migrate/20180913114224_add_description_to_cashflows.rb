class AddDescriptionToCashflows < ActiveRecord::Migration[5.2]
  def change
    add_column :cashflows, :description, :string
  end
end
