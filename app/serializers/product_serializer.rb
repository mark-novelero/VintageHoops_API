class ProductSerializer < ActiveModel::Serializer
  attributes :id, :seller_id, :title, :product_type, :team, :image, :desc, :size, :price
end
