class Cashflow < ApplicationRecord
  class << self
    def frequencies
      ["monthly", "one-off"]
    end
  end

  belongs_to :user

  validates :amount, presence: true
  validates :title, presence: true
  validates :billed_on, presence: true

  has_one_attached :document

  before_create :set_reimbursed

  def set_reimbursed
    if paid_by && paid_by.downcase == "sheng"
      self.reimbursed = false
    end
  end

end
