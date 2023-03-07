class Show < ApplicationRecord
  belongs_to :band
  has_many :tickets
  has_many :musicians, through: :tickets

  def total_sales
    tickets.sum(:cost)
  end

  def total_quantity 
    tickets.sum(:quantity)
  end

  def musician_names
    band.musicians.distinct.map {|musician| musician.name}
  end
end
