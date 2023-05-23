require 'rails_helper'

RSpec.describe Car, type: :model do
  it 'is valid with a brand and model' do
    car = Car.new(brand: 'Toyota', model: 'Corolla')
    expect(car).to be_valid
  end

  it 'is invalid without a brand' do
    car = Car.new(brand: nil, model: 'Corolla')
    expect(car).to_not be_valid
    expect(car.errors[:brand]).to be_present
  end

  it 'is invalid without a model' do
    car = Car.new(brand: 'Toyota', model: nil)
    expect(car).to_not be_valid
    expect(car.errors[:model]).to be_present
  end
end
