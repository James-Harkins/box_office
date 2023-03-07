class Ticket < ApplicationRecord
  belongs_to :musician
  belongs_to :show
end
