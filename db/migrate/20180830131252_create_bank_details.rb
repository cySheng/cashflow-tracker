class CreateBankDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_details do |t|
      t.string :bank_name
      t.string :account_number
      t.belongs_to :contact, foreign_key: true, index: true

      t.timestamps
    end
  end
end
