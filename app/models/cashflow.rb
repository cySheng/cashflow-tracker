class Cashflow < ApplicationRecord
  class << self
    def frequencies
      ["monthly", "one-off"]
    end
  end
end
