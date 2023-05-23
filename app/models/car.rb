class Car < ApplicationRecord
  belongs_to :client
  validates :brand, presence: true
  validates :model, presence: true
end
