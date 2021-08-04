require 'rails_helper'

RSpec.describe Genre, type: :model do
  let(:product) do
    Product.create(title: 'Lucifer',
                   description: 'About Lucifer')
  end
  subject do
    described_class.new(name: 'hero')
  end
  let(:genre_product) do
    GenreProduct.create(genre_id: 1,
                        product_id: 1)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'has no association with product' do
    genre_product.genre_id = nil
    expect(subject.products).to eq([])
  end
end
