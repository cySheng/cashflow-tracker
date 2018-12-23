class ModifyCashflowTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :cashflows, :name, :title
    add_column :cashflows, :category, :string
    change_column :cashflows, :description, :text
  end
end
