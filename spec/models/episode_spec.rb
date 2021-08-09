require 'rails_helper'

RSpec.describe Episode, type: :model do
  let(:show) do
    Show.create(title: 'Lucifer',
                description: 'About Lucifer')
  end
  let(:season) do
    Season.create(title: 'Season 1',
                  description: 'Bored with being the Lord of Hell, the devil relocates to Los Angeles',
                  product_id: show.id)
  end
  subject do
    described_class.new(title: 'Pilot',
                        description: 'Upon leaving hell, Lucifer Morningstar retreats to Los Angeles for exciting life',
                        season_id: season.id)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without season' do
    subject.season_id = nil
    expect(subject).to_not be_valid
  end
end
