require 'rails_helper'

RSpec.describe Product, type: :model do
  subject do
    described_class.new(title: 'Harry Potter and the Philosopher\'s Stone',
                        description: 'Harry Potter has lived under the stairs at his uncle\'s house his whole life')
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
