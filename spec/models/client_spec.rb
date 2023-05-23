require 'rails_helper'

RSpec.describe Client, type: :model do
  it 'is valid with a first_name and last_name' do
    client = Client.new(first_name: 'John', last_name: 'Doe')
    expect(client).to be_valid
  end

  it 'is invalid without a first_name' do
    client = Client.new(first_name: nil, last_name: 'Doe')
    expect(client).to_not be_valid
    expect(client.errors[:first_name]).to be_present
  end

  it 'is invalid without a last_name' do
    client = Client.new(first_name: 'John', last_name: nil)
    expect(client).to_not be_valid
    expect(client.errors[:last_name]).to be_present
  end
end
