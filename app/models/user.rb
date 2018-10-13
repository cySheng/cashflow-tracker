class User < ApplicationRecord
  include Clearance::User

  has_many :expenses
  has_many :incomes
  has_many :contacts
end
