require 'rails_helper'

RSpec.describe Season, type: :model do
  let(:show) do
    Show.create(title: 'Lucifer',
                description: 'About Lucifer')
  end
  subject do
    described_class.new(title: 'Season 1',
                        description: 'Bored with being the Lord of Hell, the devil relocates to Los Angeles',
                        product_id: show.id)
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

  it 'is not valid without show' do
    subject.product_id = nil
    expect(subject).to_not be_valid
  end
end
