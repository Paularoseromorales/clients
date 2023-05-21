class Client < ApplicationRecord
  has_many :cars, dependent: :destroy
end
