class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :trailer, :date, :duration, :sertification, :country, :updated_at,
             :image

  def image
    variant = object.image.variant(resize: '100x100')
    return rails_representation_url(variant, only_path: true) if variant
  end

  def updated_at
    object.updated_at.to_date
  end
end
