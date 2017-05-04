class CarSaleSerializer < ActiveModel::Serializer
  attributes :amount
  belongs_to :sale_report

end
