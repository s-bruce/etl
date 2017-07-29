class ProductSerializer < ActiveModel::Serializer
  attributes :sku, :name, :description, :priceList, :taxonomy, :targetValues
end
