class ProductSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :title, :description, :trailer, :date, :duration, :sertification, :country, :updated_at,
             :image, :type

  def image
    variant = object.image.variant(resize_to_fill: @instance_options[:image_size])
    rails_representation_url(variant, only_path: true) if variant
  end

  def type
    object.type = "#{object.type.downcase}s"
  end

  def updated_at
    object.updated_at.to_date
  end
end
