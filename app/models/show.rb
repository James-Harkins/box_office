class Show < ApplicationRecord
  belongs_to :band
  has_many :tickets
  has_many :musicians, through: :tickets

  def total_revenue
    tickets.sum(:cost)
  end
end
