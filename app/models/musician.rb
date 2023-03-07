class Musician < ApplicationRecord
  belongs_to :band
  has_many :tickets
  has_many :shows, through: :tickets

  def show_total_cost(show_id)
    tickets.where(show_id: show_id).sum(:cost)
  end

  def show_total_quantity(show_id)
    tickets.where(show_id: show_id).sum(:quantity)
  end
end
