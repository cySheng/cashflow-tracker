class Cashflow < ApplicationRecord
  class << self
    def frequencies
      ["monthly", "one-off"]
    end
  end

  belongs_to :user

  validates :amount, presence: true
  validates :name, presence: true

end
