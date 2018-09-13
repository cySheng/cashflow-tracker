class Cashflow < ApplicationRecord
  class << self
    def frequencies
      ["monthly", "one-off"]
    end
  end

  validates :amount, presence: true
  validates :name, presence: true

end
