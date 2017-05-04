class SalesReportSerializer < ActiveModel::Serializer
  attributes :traffic, :comment, :entity_id
  has_many :car_sales
end
